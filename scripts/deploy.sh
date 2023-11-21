#!/bin/bash
sudo docker pull carlossawan/gateway:latest
sudo docker stop gateway || true
sudo docker rm gateway || true
sudo docker run -d --name gateway -p 8080:8080 carlossawan/gateway:latest
