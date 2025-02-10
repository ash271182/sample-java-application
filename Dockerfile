FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

# Install curl and wget
RUN apk add --no-cache curl

COPY target/java-ui-app-0.0.1-SNAPSHOT.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]
