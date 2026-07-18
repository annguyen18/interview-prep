package com.javaprep.service;

import com.javaprep.dto.CreateQuestionDto;
import com.javaprep.model.BilingualText;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

/**
 * Unit tests verifying business validation rules in QuestionService.
 */
class QuestionServiceTest {

    @Test
    void testCreateQuestionFailsOnNullPayload() {
        QuestionService service = new QuestionService(null); // Repo mocked/null for pure validation test
        assertThrows(IllegalArgumentException.class, () -> service.createOrUpdateQuestion(null));
    }

    @Test
    void testCreateQuestionFailsOnEmptyTitle() {
        QuestionService service = new QuestionService(null);
        CreateQuestionDto dto = new CreateQuestionDto(
                "test-1",
                new BilingualText("OOP", "OOP"),
                "Junior",
                new BilingualText("", ""),
                new BilingualText("Valid answer", "Valid answer"),
                false
        );
        assertThrows(IllegalArgumentException.class, () -> service.createOrUpdateQuestion(dto));
    }

    @Test
    void testUpdateMasteryValidatesId() {
        QuestionService service = new QuestionService(null);
        assertThrows(IllegalArgumentException.class, () -> service.updateMastery("", "mastered"));
    }
}
