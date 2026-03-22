#!/bin/bash

echo "Parando container antigo..."
docker stop devops-container || true
docker rm devops-container || true

echo "Subindo novo container..."
docker run -d -p 80:80 --name devops-container devops-project