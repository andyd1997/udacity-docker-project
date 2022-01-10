#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=andyd1997/udacity-project

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker tag udacity-project:latest andyd1997/udacity-project:latest


# Step 3:
# Push image to a docker repository
docker push andyd1997/udacity-project:latest
