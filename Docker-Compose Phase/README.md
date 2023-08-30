# Phase 2: Docker-Compose
Welcome to the second Phase of our Cloud Computing project and feel free to reach out to us for anything related to this project and hope you have fun with the cloud experience!

## Project Brief
In this phase, you'll utilize Docker Compose to orchestrate the deployment of the `simple-go-rest-api` application. This application, written in Go, interacts with a database to store and manage text entries.

Application Overview
The `simple-go-rest-api` application offers the following endpoints:

- `GET /healthcheck`
- `POST /texts/`
- `GET /texts/`
- `GET /texts/:id`
- `DELETE /texts/:id`
- `PUT /texts/:id`

A provided Postman collection simplifies endpoint testing.

## Docker Compose Elements
### Database Service

- The database service utilizes the image `mysql/mysql-server:5.7`.
- Data persistence is maintained using volumes, ensuring data availability through container lifecycle.
- Environment variables set for the database include:
    - `MYSQL_ROOT_PASSWORD`
    - `MYSQL_USER`
    - `MYSQL_PASSWORD`
    - `MYSQL_DATABASE`

### Application Service

- The application service is defined with an image built from the supplied Dockerfile.
- Application ports are mapped, allowing access via port 8000.
- A host volume is mounted to the container's `/app/` directory, enabling real-time code changes to be reflected.
- The application service is dependent on the database service.
- Resource allocation is specified, with CPU and memory limits set.

## Usage Instructions

1. Ensure you have Docker Compose installed and configured.
2. Navigate to the directory containing the docker-compose.yml file.
3. Execute the following command to start the application:

```
docker-compose up
```

## Implementation Summary

In this phase, you employed Docker Compose to seamlessly orchestrate the deployment of the `simple-go-rest-api` application and its database. The `docker-compose.yml` file details the services, networking, and resource allocation. The application's Dockerfile defines its configuration and runtime characteristics.

By running the `docker-compose up` command, the entire environment is created, enabling interaction with the application via the specified endpoints.