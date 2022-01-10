#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=andyd1997/udacity-project

# Step 2
# Run the Docker Hub container with kubernetes
docker login

kubectl run udacity-project\
    --image=$dockerpath\
    --port=80 --labels app=udacity-project


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward udacity-project 8000:80

