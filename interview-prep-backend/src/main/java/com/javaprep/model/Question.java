package com.javaprep.model;

/**
 * Domain entity representing an interview question in the Java Revision Portal.
 * isSeed=true means the question was seeded from the default question bank and
 * cannot be deleted via the API.
 */
public record Question(
    String id,
    BilingualText category,
    String difficulty,
    BilingualText question,
    BilingualText answer,
    boolean isSeed
) {}
