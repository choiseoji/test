FROM openjdk:17-jdk-slim

ARG JAR_FILE=/build/libs/*.jar
ARG ENV

COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-Dserver.env=${ENV}", "-jar", "app.jar"]