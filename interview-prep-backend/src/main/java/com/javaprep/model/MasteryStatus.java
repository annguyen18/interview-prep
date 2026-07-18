package com.javaprep.model;

/**
 * Domain Enum representing candidate mastery progress.
 */
public enum MasteryStatus {
    MASTERED("mastered"),
    NEEDS_REVIEW("needs_review"),
    UNRATED("unrated");

    private final String code;

    MasteryStatus(String code) {
        this.code = code;
    }

    public String getCode() {
        return code;
    }

    public static MasteryStatus fromCode(String code) {
        if (code == null) return UNRATED;
        for (MasteryStatus status : values()) {
            if (status.code.equalsIgnoreCase(code)) {
                return status;
            }
        }
        return UNRATED;
    }
}
