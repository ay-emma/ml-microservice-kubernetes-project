#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=whoisay/ml-app

# Step 2
# Run the Docker Hub container with kubernetes
# minikube kubectl run --image=$dockerpath ml-app

minikube kubectl -- create deployment ml-app --image=$dockerpath


# Step 3:
# List kubernetes pods
minikube kubectl get pods 

# Step 4:
# Forward the container port to a host
minikube kubectl port-forward ml-app 8000:80

# minikube kubectl -- expose deployment ml-app --type=NodePort --port=8000



