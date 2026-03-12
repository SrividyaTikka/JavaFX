# Use OpenJDK 17 base image
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy Maven-built JAR
COPY target/SimpleJavaFrontend-1.0-SNAPSHOT-shaded.jar app.jar

# Set JavaFX environment variables if needed (Linux)
ENV JAVA_OPTS="--module-path /usr/share/openjfx/lib --add-modules javafx.controls,javafx.fxml"

# Run app
ENTRYPOINT ["java", "-jar", "app.jar"]
