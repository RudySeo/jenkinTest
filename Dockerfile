# 1. 기본 이미지로 OpenJDK 사용 (Spring Boot는 Java 기반)
FROM openjdk:17-jdk-slim

# 2. 작업 디렉토리 설정
WORKDIR /app

# 3. 빌드된 JAR 파일을 컨테이너의 /app 디렉토리로 복사
COPY target/myapp.jar /app/myapp.jar

# 4. 애플리케이션이 사용할 포트 (Spring Boot 기본 8080 포트)
EXPOSE 8080

# 5. 컨테이너 시작 시 JAR 파일 실행
ENTRYPOINT ["java", "-jar", "/app/myapp.jar"]