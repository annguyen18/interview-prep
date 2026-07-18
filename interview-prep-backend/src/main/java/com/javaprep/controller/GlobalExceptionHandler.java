package com.javaprep.controller;

import com.javaprep.dto.ApiResponse;
import io.javalin.config.JavalinConfig;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Centralized exception handler for Javalin application.
 * Ensures consistent structured JSON errors and prevents leaking stacktraces to clients.
 *
 * <p>In Javalin 7, exception handlers must be registered inside the
 * {@code Javalin.create(config -> { ... })} block via {@code config.routes.exception(...)}.
 */
public class GlobalExceptionHandler {
    private static final Logger log = LoggerFactory.getLogger(GlobalExceptionHandler.class);

    public static void register(JavalinConfig config) {
        // 400 Bad Request — validation failures from the service layer
        config.routes.exception(IllegalArgumentException.class, (e, ctx) -> {
            log.warn("Bad request: {}", e.getMessage());
            ctx.status(400).json(ApiResponse.error(e.getMessage()));
        });

        // 409 Conflict — business rule violations (e.g. attempting to delete a seed question)
        config.routes.exception(IllegalStateException.class, (e, ctx) -> {
            log.warn("Conflict: {}", e.getMessage());
            ctx.status(409).json(ApiResponse.error(e.getMessage()));
        });

        // 500 Internal Server Error — anything unexpected; message is intentionally generic
        config.routes.exception(Exception.class, (e, ctx) -> {
            log.error("Unhandled internal server error", e);
            ctx.status(500).json(ApiResponse.error("Internal server error"));
        });
    }
}
