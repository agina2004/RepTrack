# Use Java runtime (Spring Boot 3.5 is fine on 17+; 21 is OK)
FROM eclipse-temurin:21-jre

# Work directory inside the container
WORKDIR /app

# Copy the built Spring Boot jar into the image
COPY target/app-1.0-SNAPSHOT.jar app.jar

# Spring Boot/Vaadin default port
ENV PORT=8080
EXPOSE 8080

# Run the app
ENTRYPOINT ["java", "-jar", "app.jar"]
