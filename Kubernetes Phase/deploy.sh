#!/bin/bash

# Function to create Kubernetes resources
create_resources() {
    echo "Creating Kubernetes resources..."
  
    kubectl apply -f app-deployment.yaml
    kubectl apply -f app-service.yaml
    kubectl apply -f db-statefulset.yaml
    kubectl apply -f db-service.yaml
    kubectl apply -f db-secrets.yaml
    kubectl apply -f db-pvc.yaml
    kubectl apply -f app-configmap.yaml
    kubectl apply -f app-ingress.yaml

  
    echo "Kubernetes resources created successfully!"
}

# Function to delete Kubernetes resources
delete_resources() {
    echo "Deleting Kubernetes resources..."

    kubectl delete -f app-deployment.yaml
    kubectl delete -f app-service.yaml
    kubectl delete -f db-statefulset.yaml
    kubectl delete -f db-service.yaml
    kubectl delete -f db-secrets.yaml
    kubectl delete -f db-pvc.yaml
    kubectl delete -f app-configmap.yaml
    kubectl delete -f app-ingress.yaml



    echo "Kubernetes resources deleted successfully!"
}

# Check the command-line argument
if [[ "$1" == "create" ]]; then
  create_resources
elif [[ "$1" == "delete" ]]; then
  delete_resources
else
  echo "Invalid argument. Usage: ./deploy.sh create|delete"
  exit 1
fi
