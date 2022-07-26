#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=whoisay/ml-app

# Step 2
# Run the Docker Hub container with kubernetes

minikube kubectl run ml-app --image=$dockerpath 

# minikube kubectl -- create deployment ml-app --image=$dockerpath


# Step 3:
# List kubernetes pods
minikube kubectl get pods 

# Step 4:
# Forward the container port to a host
# minikube kubectl port-forward ml-app-58cb888466-bm26w 8000:80

# minikube kubectl port-forward ml-app-58cb888466-5dhxp 8000:80
minikube kubectl port-forward ml-app 8080:80

# minikube kubectl -- expose deployment ml-app --type=NodePort --port=80
# minikube delete --all




