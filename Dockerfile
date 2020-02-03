FROM openjdk

RUN addgroup -S spring && adduser -S spring -G spring

USER spring:spring

ARG JAR_FILE=target/*.jar

COPY ${JAR_FILE} app.jar

EXPOSE 8080 8787

ENTRYPOINT [ "java", "-jar", "/app.jar" ]