# 1. 실행 환경을 위한 JDK 이미지 (최소화된 OpenJDK 17 이미지 사용)
FROM openjdk:17-jdk-slim

# 2. 작업 디렉토리 설정
WORKDIR /app

# 3. 빌드된 JAR 파일을 컨테이너의 /app 디렉토리로 복사
COPY build/libs/*.jar /app/myapp.jar

# 4. 애플리케이션이 사용할 포트 노출 (Spring Boot 기본 8080 포트)
EXPOSE 8081

# 5. 컨테이너 시작 시 JAR 파일 실행
ENTRYPOINT ["java", "-jar", "/app/myapp.jar"]