package com.javaprep;

import com.javaprep.config.AppConfig;
import com.javaprep.config.ConfigLoader;
import com.javaprep.controller.GlobalExceptionHandler;
import com.javaprep.controller.QuestionController;
import com.javaprep.database.DatabaseFactory;
import com.javaprep.repository.QuestionRepository;
import com.javaprep.service.QuestionService;
import io.javalin.Javalin;
import io.javalin.http.staticfiles.Location;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.File;

/**
 * Main application bootstrap for Java Technical Revision Portal Backend.
 * Wires SOLID dependencies and launches Javalin web server.
 *
 * <p>Javalin 7 requires all routes and exception handlers to be registered
 * inside the {@code Javalin.create(config -> { ... })} block.
 */
public class App {
    private static final Logger log = LoggerFactory.getLogger(App.class);

    public static void main(String[] args) {
        log.info("Starting Java Technical Revision Portal Backend...");

        // 1. Load configuration cleanly without hardcoding
        AppConfig config = ConfigLoader.load();

        // 2. Initialize database connection pool & schema (includes seed on empty table)
        DatabaseFactory databaseFactory = new DatabaseFactory(config);

        // 3. Dependency Injection wiring (DIP applied)
        QuestionRepository repository = new QuestionRepository(databaseFactory.getDataSource());
        QuestionService service = new QuestionService(repository);
        QuestionController controller = new QuestionController(service);

        // 4. Configure & launch Javalin 7 Web Server
        // In Javalin 7, routes and exception handlers MUST be registered inside create().
        Javalin app = Javalin.create(javalinConfig -> {
            // CORS setup
            javalinConfig.bundledPlugins.enableCors(cors -> {
                cors.addRule(rule -> {
                    rule.anyHost();
                });
            });

            // Register all exception handlers
            GlobalExceptionHandler.register(javalinConfig);

            // Register all API routes
            controller.registerRoutes(javalinConfig);

            // Serve static frontend files from the project directory or classpath
            File parentIndex = new File("../index.html");
            File localIndex = new File("index.html");
            if (parentIndex.exists()) {
                javalinConfig.staticFiles.add("..", Location.EXTERNAL);
                log.info("Serving frontend from external directory: ..");
            } else if (localIndex.exists()) {
                javalinConfig.staticFiles.add(".", Location.EXTERNAL);
                log.info("Serving frontend from external directory: .");
            } else {
                javalinConfig.staticFiles.add("/public", Location.CLASSPATH);
                log.info("Serving frontend from classpath: /public");
            }
        });

        // 5. Graceful shutdown hook
        Runtime.getRuntime().addShutdownHook(new Thread(() -> {
            log.info("Shutting down application cleanly...");
            app.stop();
            databaseFactory.close();
        }, "jvm-shutdown-hook"));

        // 6. Start server
        app.start(config.port());
        log.info("Server running at http://localhost:{}", config.port());
    }
}
