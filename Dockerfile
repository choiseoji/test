#FROM openjdk:17-jdk-slim
#
#ARG JAR_FILE=/build/libs/*.jar
#ARG ENV
#
#COPY ${JAR_FILE} app.jar
#ENTRYPOINT ["java", "-Dserver.env=${ENV}", "-jar", "app.jar"]

FROM openjdk:17
ARG JAR_FILE=/build/libs/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar", "/app.jar"]