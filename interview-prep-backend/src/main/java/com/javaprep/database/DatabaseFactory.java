package com.javaprep.database;

import com.javaprep.config.AppConfig;
import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.sql.DataSource;
import java.io.BufferedReader;
import java.io.File;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.stream.Collectors;

/**
 * Manages the HikariCP connection pool and SQLite schema initialization.
 * Applies Factory pattern and ensures high concurrency via SQLite WAL mode.
 *
 * <p>Schema lifecycle on startup:
 * <ol>
 *   <li>Migrate legacy {@code custom_questions} table → {@code questions} (one-time, idempotent).</li>
 *   <li>Create {@code questions}, {@code mastery_status}, and {@code topics} tables if absent.</li>
 *   <li>Seed the {@code questions} table from {@code seed_questions.sql} if it is empty.</li>
 *   <li>Seed topics from embedded SQL if the {@code topics} table is empty.</li>
 * </ol>
 */
public class DatabaseFactory {
    private static final Logger log = LoggerFactory.getLogger(DatabaseFactory.class);
    private final HikariDataSource dataSource;

    public DatabaseFactory(AppConfig config) {
        File dbFile = new File(config.dbPath());
        File parentDir = dbFile.getParentFile();
        if (parentDir != null && !parentDir.exists()) {
            parentDir.mkdirs();
        }

        HikariConfig hikariConfig = new HikariConfig();
        hikariConfig.setJdbcUrl("jdbc:sqlite:" + config.dbPath());
        hikariConfig.setMaximumPoolSize(config.poolMaxSize());
        hikariConfig.setMinimumIdle(config.poolMinIdle());
        hikariConfig.setConnectionTestQuery("SELECT 1");
        // WAL mode: non-blocking concurrent reads, crash-safe writes
        hikariConfig.setConnectionInitSql("PRAGMA journal_mode=WAL; PRAGMA synchronous=NORMAL;");

        this.dataSource = new HikariDataSource(hikariConfig);
        log.info("Initialized HikariCP pool for SQLite database: {}", config.dbPath());

        initializeSchema();
        seedQuestionsIfEmpty();
    }

    private void initializeSchema() {
        try (Connection conn = dataSource.getConnection();
             Statement stmt = conn.createStatement()) {

            // --- Step 1: Migrate legacy table name (one-time, idempotent) ---
            // If custom_questions exists and questions does not, rename it.
            boolean customExists = tableExists(conn, "custom_questions");
            boolean questionsExists = tableExists(conn, "questions");
            if (customExists && !questionsExists) {
                stmt.execute("ALTER TABLE custom_questions RENAME TO questions;");
                log.info("Migrated legacy 'custom_questions' table to 'questions'");
            }

            // --- Step 2: Create tables (idempotent via IF NOT EXISTS) ---
            stmt.execute("""
                CREATE TABLE IF NOT EXISTS questions (
                    id          TEXT PRIMARY KEY,
                    category_en TEXT NOT NULL,
                    category_vi TEXT NOT NULL,
                    difficulty  TEXT NOT NULL,
                    question_en TEXT NOT NULL,
                    question_vi TEXT NOT NULL,
                    answer_en   TEXT NOT NULL,
                    answer_vi   TEXT NOT NULL,
                    is_seed     INTEGER NOT NULL DEFAULT 0,
                    created_at  DATETIME DEFAULT CURRENT_TIMESTAMP
                );
                """);

            // Add is_seed column to an existing table that was just renamed
            // from custom_questions (which has no is_seed column). SQLite does not
            // support ALTER TABLE ADD COLUMN IF NOT EXISTS, so we attempt and catch.
            try {
                stmt.execute("ALTER TABLE questions ADD COLUMN is_seed INTEGER NOT NULL DEFAULT 0;");
                log.info("Added 'is_seed' column to existing 'questions' table");
            } catch (SQLException e) {
                // Column already exists — expected on all subsequent startups.
                log.debug("Column 'is_seed' already present ({})", e.getMessage());
            }

            stmt.execute("""
                CREATE TABLE IF NOT EXISTS mastery_status (
                    question_id TEXT PRIMARY KEY,
                    status      TEXT NOT NULL,
                    updated_at  DATETIME DEFAULT CURRENT_TIMESTAMP
                );
                """);

            stmt.execute("""
                CREATE TABLE IF NOT EXISTS topics (
                    id            TEXT PRIMARY KEY,
                    name_en       TEXT NOT NULL UNIQUE,
                    name_vi       TEXT NOT NULL,
                    domain        TEXT NOT NULL,
                    display_order INTEGER NOT NULL
                );
                """);

            // --- Step 3: Seed topics (idempotent via INSERT OR IGNORE) ---
            stmt.execute("""
                INSERT OR IGNORE INTO topics (id, name_en, name_vi, domain, display_order) VALUES
                ('java',           'Java',                'Java',                'Core Java',                  1),
                ('spring-core',    'Spring Core',         'Spring Core',         'Spring Ecosystem',           2),
                ('spring-boot',    'Spring Boot',         'Spring Boot',         'Spring Ecosystem',           3),
                ('spring-mvc',     'Spring MVC',          'Spring MVC',          'Spring Ecosystem',           4),
                ('spring-tx',      'Spring Transactions', 'Spring Transactions', 'Spring Ecosystem',           5),
                ('rest',           'REST',                'REST',                'API & Network Protocols',    6),
                ('websocket',      'WebSocket',           'WebSocket',           'API & Network Protocols',    7),
                ('grpc',           'gRPC',                'gRPC',                'API & Network Protocols',    8),
                ('spring-security','Spring Security',     'Spring Security',     'Security & Authentication',  9),
                ('web-security',   'Web Security',        'Web Security',        'Security & Authentication', 10),
                ('jwt',            'JWT',                 'JWT',                 'Security & Authentication', 11),
                ('oauth2',         'OAuth 2.0',           'OAuth 2.0',           'Security & Authentication', 12),
                ('oidc',           'OpenID Connect',      'OpenID Connect',      'Security & Authentication', 13),
                ('jpa-hibernate',  'JPA/Hibernate',       'JPA/Hibernate',       'Persistence & Database',    14),
                ('postgresql',     'PostgreSQL',          'PostgreSQL',          'Persistence & Database',    15),
                ('redis',          'Redis',               'Redis',               'Caching & In-Memory',       16);
                """);

            log.info("Schema verified: 'questions', 'mastery_status', 'topics' tables ready");
        } catch (SQLException e) {
            log.error("Fatal: failed to initialize SQLite schema", e);
            throw new RuntimeException("Database schema initialization failed", e);
        }
    }

    /**
     * Seeds the questions table from classpath resource {@code /seed_questions.sql}
     * if and only if the table is currently empty. This is a no-op on all subsequent
     * startups when questions already exist.
     */
    private void seedQuestionsIfEmpty() {
        try (Connection conn = dataSource.getConnection();
             Statement stmt = conn.createStatement()) {

            ResultSet rs = stmt.executeQuery("SELECT COUNT(*) FROM questions");
            int count = rs.next() ? rs.getInt(1) : 0;
            rs.close();

            if (count > 0) {
                log.info("Questions table contains {} rows — skipping seed", count);
                return;
            }

            log.info("Questions table is empty — loading seed from seed_questions.sql");
            String sql = loadClasspathResource("/seed_questions.sql");
            if (sql == null || sql.isBlank()) {
                log.warn("seed_questions.sql not found on classpath or is empty; no seed applied");
                return;
            }

            // Execute the entire script. The BEGIN TRANSACTION / COMMIT are already
            // embedded in the SQL file, so we run it as a single batch.
            stmt.executeUpdate(sql);
            log.info("Seed questions loaded successfully");
        } catch (SQLException e) {
            log.error("Failed to seed questions table", e);
            throw new RuntimeException("Database seed failed", e);
        }
    }

    /**
     * Loads a UTF-8 text resource from the classpath.
     *
     * @param resourcePath absolute classpath path (e.g. {@code /seed_questions.sql})
     * @return file contents, or {@code null} if the resource is not found
     */
    private String loadClasspathResource(String resourcePath) {
        InputStream is = getClass().getResourceAsStream(resourcePath);
        if (is == null) {
            return null;
        }
        try (BufferedReader reader = new BufferedReader(
                new InputStreamReader(is, StandardCharsets.UTF_8))) {
            return reader.lines().collect(Collectors.joining("\n"));
        } catch (Exception e) {
            log.error("Failed to read classpath resource: {}", resourcePath, e);
            return null;
        }
    }

    /** Returns true if the given table name exists in the SQLite database. */
    private boolean tableExists(Connection conn, String tableName) throws SQLException {
        try (ResultSet rs = conn.getMetaData().getTables(null, null, tableName, null)) {
            return rs.next();
        }
    }

    public DataSource getDataSource() {
        return dataSource;
    }

    public void close() {
        if (dataSource != null && !dataSource.isClosed()) {
            dataSource.close();
            log.info("HikariCP connection pool closed cleanly");
        }
    }
}
