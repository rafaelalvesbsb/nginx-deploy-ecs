#!/bin/bash
set -xv
aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 533267310802.dkr.ecr.us-east-2.amazonaws.com
aws ecr batch-delete-image --repository-name nginx-deploy-ecs --image-ids imageTag=latest
docker build -t nginx-deploy-ecs -f Dockerfile .
docker tag nginx-deploy-ecs:latest 533267310802.dkr.ecr.us-east-2.amazonaws.com/nginx-deploy-ecs:latest
docker push 533267310802.dkr.ecr.us-east-2.amazonaws.com/nginx-deploy-ecs:latest
