package com.javaprep.model;

/**
 * Value Object representing bilingual text in English and Vietnamese.
 */
public record BilingualText(String en, String vi) {
    public BilingualText {
        if (en == null) en = "";
        if (vi == null) vi = "";
    }
}
