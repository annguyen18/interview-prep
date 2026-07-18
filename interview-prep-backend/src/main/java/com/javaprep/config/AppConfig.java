package com.javaprep.config;

import java.util.List;

/**
 * Immutable configuration record for application settings.
 * Applies Single Responsibility Principle by decoupling configuration parameters
 * from the loading mechanism and server execution.
 */
public record AppConfig(
    int port,
    String appEnv,
    String dbPath,
    List<String> allowedOrigins,
    int poolMaxSize,
    int poolMinIdle
) {
    public boolean isDevelopment() {
        return "development".equalsIgnoreCase(appEnv);
    }
}
