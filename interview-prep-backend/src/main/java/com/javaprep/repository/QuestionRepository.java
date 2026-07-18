package com.javaprep.repository;

import com.javaprep.model.BilingualText;
import com.javaprep.model.Question;
import com.javaprep.model.Topic;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

/**
 * Data Access Object (DAO) for Questions and Mastery Statuses using HikariCP.
 * Uses 100% PreparedStatements to prevent SQL injection vulnerabilities.
 * All questions (seed and user-created) live in the 'questions' table.
 */
public class QuestionRepository {
    private static final Logger log = LoggerFactory.getLogger(QuestionRepository.class);
    private final DataSource dataSource;

    public QuestionRepository(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    public List<Question> findAllQuestions() {
        String sql = """
            SELECT id, category_en, category_vi, difficulty,
                   question_en, question_vi, answer_en, answer_vi, is_seed
            FROM questions
            ORDER BY is_seed DESC, created_at ASC
            """;
        List<Question> questions = new ArrayList<>();

        try (Connection conn = dataSource.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                questions.add(mapRow(rs));
            }
        } catch (SQLException e) {
            log.error("Error retrieving all questions", e);
            throw new RuntimeException("Database error retrieving questions", e);
        }
        return questions;
    }

    /**
     * Finds a single question by its ID.
     *
     * @return an {@link Optional} containing the question, or empty if not found
     */
    public Optional<Question> findById(String id) {
        String sql = """
            SELECT id, category_en, category_vi, difficulty,
                   question_en, question_vi, answer_en, answer_vi, is_seed
            FROM questions WHERE id = ?
            """;

        try (Connection conn = dataSource.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, id);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return Optional.of(mapRow(rs));
                }
            }
        } catch (SQLException e) {
            log.error("Error finding question id={}", id, e);
            throw new RuntimeException("Database error finding question", e);
        }
        return Optional.empty();
    }

    public Map<String, String> findAllMasteryStatuses() {
        String sql = "SELECT question_id, status FROM mastery_status";
        Map<String, String> map = new HashMap<>();

        try (Connection conn = dataSource.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                map.put(rs.getString("question_id"), rs.getString("status"));
            }
        } catch (SQLException e) {
            log.error("Error retrieving mastery statuses", e);
            throw new RuntimeException("Database error retrieving mastery status", e);
        }
        return map;
    }

    public List<Topic> findAllTopics() {
        String sql = "SELECT id, name_en, name_vi, domain, display_order FROM topics ORDER BY display_order ASC";
        List<Topic> topics = new ArrayList<>();

        try (Connection conn = dataSource.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                Topic t = new Topic(
                        rs.getString("id"),
                        rs.getString("name_en"),
                        rs.getString("name_vi"),
                        rs.getString("domain"),
                        rs.getInt("display_order")
                );
                topics.add(t);
            }
        } catch (SQLException e) {
            log.error("Error retrieving topics", e);
            throw new RuntimeException("Database error retrieving topics", e);
        }
        return topics;
    }

    public void saveQuestion(Question q) {
        String sql = """
            INSERT INTO questions
                (id, category_en, category_vi, difficulty, question_en, question_vi, answer_en, answer_vi, is_seed)
            VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)
            ON CONFLICT(id) DO UPDATE SET
                category_en = excluded.category_en,
                category_vi = excluded.category_vi,
                difficulty  = excluded.difficulty,
                question_en = excluded.question_en,
                question_vi = excluded.question_vi,
                answer_en   = excluded.answer_en,
                answer_vi   = excluded.answer_vi;
            """;

        try (Connection conn = dataSource.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, q.id());
            stmt.setString(2, q.category().en());
            stmt.setString(3, q.category().vi());
            stmt.setString(4, q.difficulty());
            stmt.setString(5, q.question().en());
            stmt.setString(6, q.question().vi());
            stmt.setString(7, q.answer().en());
            stmt.setString(8, q.answer().vi());
            stmt.setInt(9, q.isSeed() ? 1 : 0);
            stmt.executeUpdate();
            log.info("Saved question id={}", q.id());
        } catch (SQLException e) {
            log.error("Error saving question id={}", q.id(), e);
            throw new RuntimeException("Database error saving question", e);
        }
    }

    /**
     * Deletes a user-created question and its mastery record atomically.
     * Callers must ensure the question exists and is not a seed question
     * before calling this method.
     */
    public void deleteQuestion(String id) {
        String deleteQSql = "DELETE FROM questions WHERE id = ?";
        String deleteMSql = "DELETE FROM mastery_status WHERE question_id = ?";

        try (Connection conn = dataSource.getConnection()) {
            conn.setAutoCommit(false);
            try (PreparedStatement qStmt = conn.prepareStatement(deleteQSql);
                 PreparedStatement mStmt = conn.prepareStatement(deleteMSql)) {

                qStmt.setString(1, id);
                qStmt.executeUpdate();

                mStmt.setString(1, id);
                mStmt.executeUpdate();

                conn.commit();
                log.info("Deleted question and mastery id={}", id);
            } catch (SQLException e) {
                conn.rollback();
                throw e;
            } finally {
                conn.setAutoCommit(true);
            }
        } catch (SQLException e) {
            log.error("Error deleting question id={}", id, e);
            throw new RuntimeException("Database error deleting question", e);
        }
    }

    public void saveMastery(String questionId, String status) {
        String sql = """
            INSERT INTO mastery_status (question_id, status, updated_at)
            VALUES (?, ?, CURRENT_TIMESTAMP)
            ON CONFLICT(question_id) DO UPDATE SET
                status     = excluded.status,
                updated_at = CURRENT_TIMESTAMP;
            """;

        try (Connection conn = dataSource.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, questionId);
            stmt.setString(2, status);
            stmt.executeUpdate();
            log.info("Updated mastery questionId={}, status={}", questionId, status);
        } catch (SQLException e) {
            log.error("Error saving mastery for questionId={}", questionId, e);
            throw new RuntimeException("Database error saving mastery status", e);
        }
    }

    /** Maps a ResultSet row to a {@link Question} domain object. */
    private Question mapRow(ResultSet rs) throws SQLException {
        return new Question(
                rs.getString("id"),
                new BilingualText(rs.getString("category_en"), rs.getString("category_vi")),
                rs.getString("difficulty"),
                new BilingualText(rs.getString("question_en"), rs.getString("question_vi")),
                new BilingualText(rs.getString("answer_en"), rs.getString("answer_vi")),
                rs.getInt("is_seed") == 1
        );
    }
}
