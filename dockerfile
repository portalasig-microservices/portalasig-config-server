# Use an OpenJDK base image
FROM eclipse-temurin:17-jdk

# Set working directory
WORKDIR /app

# Copy the built JAR file into the container
COPY target/*.jar app.jar

# Expose the default Spring Boot port
EXPOSE 8888

# Run the application
CMD ["java", "-jar", "app.jar"]