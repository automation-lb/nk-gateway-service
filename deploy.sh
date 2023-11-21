#!/bin/bash
docker pull $DOCKERHUB_USERNAME/gateway:latest
docker stop gateway || true
docker rm gateway || true
docker run -d --name gateway -p 8080:8080 $DOCKERHUB_USERNAME/gateway:latest
