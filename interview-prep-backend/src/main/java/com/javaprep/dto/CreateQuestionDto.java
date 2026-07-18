package com.javaprep.dto;

import com.javaprep.model.BilingualText;

/**
 * DTO for creating or importing questions via API.
 * Decouples API contract from internal database structure.
 * isSeed defaults to false — callers only set it during the internal seed process.
 */
public record CreateQuestionDto(
    String id,
    BilingualText category,
    String difficulty,
    BilingualText question,
    BilingualText answer,
    boolean isSeed
) {}
