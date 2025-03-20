#!/bin/bash
DOCKER_IMAGE="rudyseo/test1234"

# 최신 Docker 이미지 가져오기
docker pull $DOCKER_IMAGE:latest

# 기존 컨테이너 중지 및 삭제
docker stop myapp || true
docker rm myapp || true

# 새로운 컨테이너 실행
docker run -d --name test1234 -p 8080:8080 $DOCKER_IMAGE:latest
