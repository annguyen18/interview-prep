package com.javaprep.controller;

import com.javaprep.dto.ApiResponse;
import com.javaprep.dto.CreateQuestionDto;
import com.javaprep.dto.UpdateMasteryDto;
import com.javaprep.model.Question;
import com.javaprep.model.Topic;
import com.javaprep.service.QuestionService;
import io.javalin.config.JavalinConfig;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

/**
 * Controller handling REST API endpoints for questions and mastery status.
 *
 * <p>Route summary:
 * <ul>
 *   <li>GET    /api/v1/questions         — all questions (seed + user-created)</li>
 *   <li>POST   /api/v1/questions         — create a user question</li>
 *   <li>DELETE /api/v1/questions/{id}    — delete a user question (409 if seed)</li>
 *   <li>POST   /api/v1/questions/import  — bulk import user questions</li>
 *   <li>PUT    /api/v1/mastery/{id}      — update mastery status for any question</li>
 *   <li>GET    /api/v1/topics            — list all revision topics</li>
 *   <li>GET    /api/v1/data              — combined payload for initial page load</li>
 * </ul>
 *
 * <p>In Javalin 7, routes must be registered inside the
 * {@code Javalin.create(config -> { ... })} block via {@code config.routes.*}.
 */
public class QuestionController {
    private final QuestionService service;

    public QuestionController(QuestionService service) {
        this.service = service;
    }

    public void registerRoutes(JavalinConfig config) {

        // GET /api/v1/questions — returns all questions (seed + user-created)
        config.routes.get("/api/v1/questions", ctx -> {
            List<Question> questions = service.getAllQuestions();
            ctx.json(ApiResponse.ok("Retrieved questions", questions));
        });

        // POST /api/v1/questions — create or update a user question
        config.routes.post("/api/v1/questions", ctx -> {
            CreateQuestionDto dto = ctx.bodyAsClass(CreateQuestionDto.class);
            Question saved = service.createOrUpdateQuestion(dto);
            ctx.status(201).json(ApiResponse.ok("Question created/updated successfully", saved));
        });

        // DELETE /api/v1/questions/{id} — delete a user question; 409 if seed
        config.routes.delete("/api/v1/questions/{id}", ctx -> {
            String id = ctx.pathParam("id");
            service.deleteQuestion(id);
            ctx.json(ApiResponse.ok("Question deleted successfully", Map.of("id", id)));
        });

        // POST /api/v1/questions/import — bulk import user questions
        config.routes.post("/api/v1/questions/import", ctx -> {
            CreateQuestionDto[] dtos = ctx.bodyAsClass(CreateQuestionDto[].class);
            int importedCount = service.bulkImportQuestions(Arrays.asList(dtos));
            ctx.json(ApiResponse.ok("Bulk import completed", Map.of("importedCount", importedCount)));
        });

        // PUT /api/v1/mastery/{id} — update mastery status for any question
        config.routes.put("/api/v1/mastery/{id}", ctx -> {
            String questionId = ctx.pathParam("id");
            UpdateMasteryDto dto = ctx.bodyAsClass(UpdateMasteryDto.class);
            String savedStatus = service.updateMastery(questionId, dto != null ? dto.status() : null);
            ctx.json(ApiResponse.ok("Mastery status updated",
                    Map.of("questionId", questionId, "status", savedStatus)));
        });

        // GET /api/v1/topics — list all revision topics
        config.routes.get("/api/v1/topics", ctx -> {
            List<Topic> topics = service.getAllTopics();
            ctx.json(ApiResponse.ok("Retrieved topics", topics));
        });

        // GET /api/v1/data — combined initial-load payload for the frontend
        config.routes.get("/api/v1/data", ctx -> {
            List<Question> questions = service.getAllQuestions();
            Map<String, String> mastery = service.getAllMasteryStatuses();
            List<Topic> topics = service.getAllTopics();

            Map<String, Object> payload = Map.of(
                    "questions", questions,
                    "masteryStatus", mastery,
                    "topics", topics
            );
            ctx.json(ApiResponse.ok("Retrieved questions, mastery, and topics", payload));
        });
    }
}
