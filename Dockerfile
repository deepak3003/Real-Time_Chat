# Use OpenJDK 21 image (matches your pom.xml)
FROM eclipse-temurin:21-jdk

# Set working directory inside the container
WORKDIR /app

# Copy built JAR into container
COPY target/chat-0.0.1-SNAPSHOT.jar app.jar

# Expose the default Spring Boot port
EXPOSE 8080

# Start the application
ENTRYPOINT ["java", "-jar", "app.jar"]
