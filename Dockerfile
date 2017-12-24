FROM openjdk:8-jdk-alpine

EXPOSE 8082
VOLUME /tmp
ARG JAR_FILE
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-Xmx800m", "-jar", "/app.jar"]