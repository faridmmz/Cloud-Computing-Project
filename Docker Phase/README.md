# Phase 1: Docker
Welcome to the first Phase of our Cloud Computing project and feel free to reach out to us for anything related to this project and hope you have fun with the cloud experience!

## Table of Contents

- [Project Brief](#project-Brief)
- [Docker Files Description](#docker-Files-Description)
- [Running the Applications](#running-the-Applications)


## Project Brief

In this phase, we'll create Docker files for different applications, build the corresponding images, and evaluate their performance by running containers. Detailed instructions for each application are provided below.

Docker Files to be Written
- Docker file for `java-pong-ping` application
- Docker file for `python-pong-ping` application
- Docker file for `js-pong-ping` application
- Docker file for `nginx`

## Docker Files Description

### Docker file for `java-pong-ping` Application
This Java application exposes the following endpoint:

- `/ping`: GET method to receive "ping" as a response.
The application runs on port 8001. To run the application:
```
javac PingPong.java
java PingPong
```

Use `openjdk:8` as the base image. Note that the alias network for this container is `javaapp`.

### Docker file for `python-pong-ping` Application

This Python application exposes the following endpoints:

- `/ping`: GET method to receive "ping" as a response.
- `/echo`: POST method with "echo":"text" to receive "text" as a response.
The application runs on port 8002. To run the application:
```
uvicorn PingPong:app --host 0.0.0.0 --port 8002 --reload
```

Use `fastapi-gunicorn-uvicorn/tiangolo` as the base image. Ensure the working directory (`WORKDIR`) is specified. The alias network for this container is `pythonapp`.

### Docker file for `js-pong-ping` Application

This JavaScript application exposes the following endpoint:

- `/ping`: GET method to receive "ping" as a response.

The application runs on port 8003. To run the application:
```
node PingPong.js
```

Use `node:slim` as the base image. Transfer all files in the folder to the container. The alias network for this container is `jsapp`.

### Docker file for `nginx`

The Docker file for Nginx contains a configuration to act as a reverse proxy for different applications, host a static HTML page, and serve contents from a folder outside the container for download.

Here's a sample configuration:
```
events { }
http {
    include mime.types;
    sendfile on;

    server {
        listen 8080;
        root /static;
        gzip_static on;

        location /shared/ {
               alias /shared/;
               add_header Content-disposition "attachment";
           }

        location /pingjava {
            proxy_pass http://javaapp:8001/ping;
          }
        location /pingpython {
            proxy_pass http://pythonapp:8002/ping;
          }
        location /pingjs {
            proxy_pass http://jsapp:8003/ping;
          }
    }
}
```

The Dockerfile:
```
FROM nginx
COPY nginx.conf /etc/nginx/nginx.conf
COPY . .
EXPOSE 8080
```
## Running the Applications
Follow the provided instructions to build and run each Docker container. Ensure you have Docker installed and properly configured.