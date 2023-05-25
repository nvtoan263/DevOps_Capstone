#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Step 1:
# dockerpath=<your docker ID/path:tag>
dockerpath=toannguyenofficial/housing-prediction:latest

# Step 2:  
# Authenticate & tag
docker login

# Step 3:
# Push image to a docker repository
docker push $dockerpath
