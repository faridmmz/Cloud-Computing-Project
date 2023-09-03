# Cloud Computing Project: Multi-Container Application Deployment

**Hold onto your hats as we take a leap into the digital skies, exploring the 'byte'-sized wonders of Docker, Docker-Compose, and Kubernetes**

This repository contains the documentation and resources for the Cloud Computing project, developed by Faridreza Momtazzandi and Mahya Ehsanimehr. The project focuses on deploying a multi-container application using Docker, Docker Compose, and Kubernetes.

![Photo by <a href="https://unsplash.com/@chuttersnap?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">CHUTTERSNAP</a> on <a href="https://unsplash.com/photos/9AqIdzEc9pY?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Unsplash</a>
  ](https://github.com/faridmmz/Cloud-Computing-Project/blob/main/README_image.jpg "Photo by CHUTTERSNAP on Unsplash")

## Table of Contents

- [Phase 1: Docker](#Phase1-Docker)
- [Phase 2: Docker Compose](#phase2-Docker-Compose)
- [## Phase 3: Kubernetes](#phase3-Kubernetes)
- [Conclusion](#conclusion)

## Phase 1: Docker

### Project Brief

In this phase, we developed Dockerfiles for various components of the application and created Docker images. The components include:
- Java Ping-Pong Application
- Python Ping-Pong Application
- JavaScript Ping-Pong Application
- Nginx Reverse Proxy

The Docker images were used to run containers, and the Nginx container acted as a reverse proxy for the applications. The relevant configuration files were provided.

For detailed instructions, refer to [Phase 1 Documentation](Docker-Phase/README.md).

## Phase 2: Docker Compose

### Project Brief

In this phase, a Docker Compose file was created to simplify the deployment of the application. The application, a simple Go REST API with a MySQL database, was defined in the Compose file. The services were orchestrated, ensuring the application container only runs once the database container is up.

For detailed instructions, refer to [Phase 2 Documentation](Docker-Compose-Phase/README.md).

## Phase 3: Kubernetes

### Project Brief

This phase involved migrating the application from Compose Docker to Kubernetes for production deployment. Kubernetes configuration files were created for each component of the application, including pods, services, secrets, and persistent volumes. The deployment script facilitates the creation and deletion of Kubernetes resources.

For detailed instructions, refer to [Phase 3 Documentation](Kubernetes-Phase/README.md).

## Conclusion

This project demonstrated the deployment of a multi-container application using various containerization and orchestration technologies. Through Docker, Docker Compose, and Kubernetes, we successfully managed the deployment of different components, ensuring scalability, reliability, and maintainability of the application.

**As our cloud computing saga wrapped up, let's raise a virtual toast to the incredible world of Docker, Docker-Compose, and Kubernetes. May your deployments always be 'container'-ful."**

For any inquiries or further information don't hesitate to contact us!

---

*Note: This README provides an overview of the project and each phase. For detailed instructions and code snippets, refer to the respective phase directories.*
