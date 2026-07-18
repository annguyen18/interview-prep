# Multi-stage Dockerfile for Java Technical Revision Portal

# --- Stage 1: Build the backend fat JAR ---
FROM maven:3.9.6-eclipse-temurin-17-alpine AS build
WORKDIR /build

# Copy pom.xml and download dependencies (cached layer)
COPY interview-prep-backend/pom.xml .
RUN mvn dependency:go-offline -B

# Copy source files and build package
COPY interview-prep-backend/src ./src
RUN mvn clean package -DskipTests -B

# --- Stage 2: Create a minimal secure runtime image ---
FROM eclipse-temurin:17-jre-alpine
WORKDIR /app

# Create folder for persistent SQLite database and set ownership to non-root user
RUN mkdir -p /app/data && chown -R 1000:1000 /app

# Copy the compiled fat JAR from build stage
COPY --from=build /build/target/java-prep-backend-1.0.0.jar app.jar

# Copy frontend static files as a fallback for standalone container usage
COPY index.html styles.css ./
COPY js/ ./js/
RUN chown -R 1000:1000 /app

# Set default production environment settings
ENV PORT=7070
ENV APP_ENV=production
ENV DB_PATH=/app/data/interview_prep.db
ENV ALLOWED_ORIGINS=https://interview-prep.antnguyen.dev

# Run as non-root user (id=1000) for security hardening
USER 1000

# Expose HTTP port
EXPOSE 7070

# Launch JVM with low-footprint settings optimized for micro-VPS environments
CMD ["java", "-Xms64m", "-Xmx128m", "-XX:+UseSerialGC", "-jar", "app.jar"]
