# Phase 3: Kubernetes Deployment
Welcome to the last Phase of our Cloud Computing project and feel free to reach out to us for anything related to this project and hope you have fun with the cloud experience!

## Table of Contents

- [Project Brief](#project-Brief)
- [Overview](#overview)
- [Important Files](#important-Files)
- [Deployment and Management](#Deployment-and-Management)
- [Conclusion](#conclusion)

## Project Brief
In this phase, we've successfully migrated our application from the Docker Compose setup used in the development environment to a production-ready Kubernetes configuration. This allows us to take advantage of the powerful orchestration capabilities of Kubernetes for managing our application and database.

## Overview
Throughout this phase, we achieved the following objectives:

1. **Cluster Setup**: We've set up a Kubernetes cluster comprising a master node and a worker node using minikube, ensuring high availability.

2. **Deployments and Services**: We've employed Kubernetes Deployments to manage the application and database containers. Services are used to expose these containers and enable communication between them.

3. **Resource Management**: Each container that was previously defined in Docker Compose has been transitioned into a separate pod in Kubernetes, enhancing isolation.

4. **Configuration Management**: We've utilized ConfigMap to handle environment variables and configuration details for the application.

5. **Security and Secrets**: Sensitive information like database credentials is now stored securely in Kubernetes Secrets, improving data protection.

6. **External Access**: With the help of Ingress Nginx, we've enabled external access to our web service, allowing users to interact with the application.

7. **Internal Database Access**: We've restricted access to the database services within the Kubernetes cluster, enhancing security.

8. **Data Persistence**: Our database data persists across host system restarts, ensuring data integrity and availability.

9. **Persistent Storage**: Containers requiring data storage have been allocated one-gigabyte PersistentVolumeClaim resources.

10. **Scalability and Load Balancing**: ReplicaSets have been implemented to manage multiple instances of the pod (deployment) databases, providing scalability. Load balancing between pods is also achieved.

11. **Resource Limits**: CPU and RAM usage for the containers are controlled, preventing resource overutilization.

## Important Files
- **app-configmap.yaml**: ConfigMap resource that holds environment variables and configurations for the application.
- **app-deployment.yaml**: Deployment resource for the application container, including resource limits.
- **app-ingress.yaml**: Ingress resource for external access to the web service using Ingress Nginx.
- **app-service.yaml**: Service resource for load balancing and exposing the application.
- **db-pvc.yaml**: PersistentVolumeClaim resource for allocating storage for the database.
- **db-secrets.yaml**: Secret resource for storing sensitive information like database credentials.
- **db-service.yaml**: Service resource for exposing the database.
- **db-statefulset.yaml**: StatefulSet resource for the database container, including volumeClaimTemplates.
- **deploy.sh**: Script to create or delete Kubernetes resources easily.

## Deployment and Management
To facilitate the management of Kubernetes resources, we've included the `deploy.sh` script. This script streamlines the process of creating or deleting the required Kubernetes resources. The following commands can be used:
```
./deploy.sh create  # Create Kubernetes resources
./deploy.sh delete  # Delete Kubernetes resources
```
Make sure you have the `kubectl` tool installed and a functioning Kubernetes cluster before running the script.

## Conclusion
This phase marks the successful transition of our application into a production-ready Kubernetes environment. The orchestrated deployment, robust resource management, and enhanced security mechanisms ensure the reliability and scalability of our application.