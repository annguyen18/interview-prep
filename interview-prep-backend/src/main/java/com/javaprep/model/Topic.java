package com.javaprep.model;

/**
 * Domain entity representing an interview revision topic.
 */
public record Topic(
    String id,
    String nameEn,
    String nameVi,
    String domain,
    int displayOrder
) {}
