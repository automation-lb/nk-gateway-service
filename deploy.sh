#!/bin/bash
docker pull carlossawan/gateway:latest
docker stop gateway || true
docker rm gateway || true
docker run -d --name gateway -p 8080:8080 carlossawan/gateway:latest
