package com.javaprep.service;

import com.javaprep.dto.CreateQuestionDto;
import com.javaprep.model.BilingualText;
import com.javaprep.model.MasteryStatus;
import com.javaprep.model.Question;
import com.javaprep.model.Topic;
import com.javaprep.repository.QuestionRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;
import java.util.Map;
import java.util.UUID;

/**
 * Service Layer enforcing business rules, input sanitization, and validation.
 * Uses constructor injection for QuestionRepository, making unit testing straightforward.
 */
public class QuestionService {
    private static final Logger log = LoggerFactory.getLogger(QuestionService.class);
    private final QuestionRepository repository;

    public QuestionService(QuestionRepository repository) {
        this.repository = repository;
    }

    public List<Question> getAllQuestions() {
        return repository.findAllQuestions();
    }

    public Map<String, String> getAllMasteryStatuses() {
        return repository.findAllMasteryStatuses();
    }

    public List<Topic> getAllTopics() {
        return repository.findAllTopics();
    }

    public Question createOrUpdateQuestion(CreateQuestionDto dto) {
        validateQuestionDto(dto);

        String id = (dto.id() != null && !dto.id().isBlank())
                ? dto.id().trim()
                : "custom-" + UUID.randomUUID().toString().substring(0, 8);

        Question q = new Question(
                id,
                new BilingualText(dto.category().en().trim(), dto.category().vi().trim()),
                dto.difficulty().trim(),
                new BilingualText(dto.question().en().trim(), dto.question().vi().trim()),
                new BilingualText(dto.answer().en().trim(), dto.answer().vi().trim()),
                dto.isSeed()
        );

        repository.saveQuestion(q);
        log.info("Created/updated question id={}", id);
        return q;
    }

    public int bulkImportQuestions(List<CreateQuestionDto> dtos) {
        if (dtos == null || dtos.isEmpty()) {
            throw new IllegalArgumentException("Import array cannot be empty");
        }
        if (dtos.size() > 500) {
            throw new IllegalArgumentException("Bulk import exceeds maximum limit of 500 items per request");
        }

        int count = 0;
        for (CreateQuestionDto dto : dtos) {
            createOrUpdateQuestion(dto);
            count++;
        }
        log.info("Bulk imported {} questions", count);
        return count;
    }

    /**
     * Deletes a user-created question.
     *
     * @throws IllegalArgumentException if the ID is blank
     * @throws IllegalStateException    if the question does not exist or is a seed question
     */
    public void deleteQuestion(String id) {
        if (id == null || id.isBlank()) {
            throw new IllegalArgumentException("Question ID is required");
        }
        String trimmedId = id.trim();

        Question existing = repository.findById(trimmedId).orElseThrow(
                () -> new IllegalStateException("Question not found: " + trimmedId)
        );

        if (existing.isSeed()) {
            throw new IllegalStateException("Seed questions cannot be deleted");
        }

        repository.deleteQuestion(trimmedId);
    }

    public String updateMastery(String questionId, String statusCode) {
        if (questionId == null || questionId.isBlank()) {
            throw new IllegalArgumentException("Question ID is required");
        }
        MasteryStatus status = MasteryStatus.fromCode(statusCode);
        repository.saveMastery(questionId.trim(), status.getCode());
        return status.getCode();
    }

    private void validateQuestionDto(CreateQuestionDto dto) {
        if (dto == null) {
            throw new IllegalArgumentException("Payload cannot be null");
        }
        if (dto.question() == null || dto.question().en() == null || dto.question().en().isBlank()) {
            throw new IllegalArgumentException("Question title (EN) is required");
        }
        if (dto.answer() == null || dto.answer().en() == null || dto.answer().en().isBlank()) {
            throw new IllegalArgumentException("Answer content (EN) is required");
        }
        if (dto.category() == null || dto.category().en() == null || dto.category().en().isBlank()) {
            throw new IllegalArgumentException("Category is required");
        }
        if (dto.difficulty() == null || dto.difficulty().isBlank()) {
            throw new IllegalArgumentException("Difficulty level is required");
        }
        if (dto.answer().en().length() > 100_000 || dto.answer().vi().length() > 100_000) {
            throw new IllegalArgumentException("Answer length exceeds maximum allowed character size");
        }
    }
}
