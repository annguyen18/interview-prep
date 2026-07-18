package com.javaprep.config;

import io.github.cdimascio.dotenv.Dotenv;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.Arrays;
import java.util.List;

/**
 * Loads application configuration from environment variables or .env file.
 * Ensures zero hardcoded secrets or infrastructure paths.
 */
public class ConfigLoader {
    private static final Logger log = LoggerFactory.getLogger(ConfigLoader.class);

    public static AppConfig load() {
        Dotenv dotenv = Dotenv.configure()
                .ignoreIfMissing()
                .load();

        int port = getInt(dotenv, "PORT", 7070);
        String appEnv = getString(dotenv, "APP_ENV", "development");
        String dbPath = getString(dotenv, "DB_PATH", "data/interview_prep.db");
        String originsStr = getString(dotenv, "ALLOWED_ORIGINS", "http://localhost:7070");
        int maxPoolSize = getInt(dotenv, "DB_POOL_MAX_SIZE", 10);
        int minIdle = getInt(dotenv, "DB_POOL_MIN_IDLE", 2);

        List<String> allowedOrigins = Arrays.stream(originsStr.split(","))
                .map(String::trim)
                .filter(s -> !s.isEmpty())
                .toList();

        log.info("Loaded AppConfig: port={}, env={}, dbPath={}", port, appEnv, dbPath);
        return new AppConfig(port, appEnv, dbPath, allowedOrigins, maxPoolSize, minIdle);
    }

    private static String getString(Dotenv dotenv, String key, String defaultValue) {
        String val = dotenv.get(key);
        if (val == null || val.isBlank()) {
            val = System.getenv(key);
        }
        return (val != null && !val.isBlank()) ? val : defaultValue;
    }

    private static int getInt(Dotenv dotenv, String key, int defaultValue) {
        String val = getString(dotenv, key, null);
        if (val == null) return defaultValue;
        try {
            return Integer.parseInt(val);
        } catch (NumberFormatException e) {
            log.warn("Invalid integer value for key {}: {}. Falling back to default {}", key, val, defaultValue);
            return defaultValue;
        }
    }
}
