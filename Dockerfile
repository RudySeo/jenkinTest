FROM openjdk:17-jdk-slim

CMD ["./gradlew", "clean", "build"]

COPY build/libs/*.jar /app/myapp.jar

COPY ${JAR_FILE} app.jar

EXPOSE 8083
# 2
ENTRYPOINT ["java","-jar","/app.jar"]