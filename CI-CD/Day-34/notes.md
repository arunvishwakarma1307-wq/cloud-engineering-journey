# Day-34: Docker Integration with GitHub Actions — Notes

## 1. What is Docker?
Docker is a platform used to package applications and their dependencies into containers.

Containers help applications run consistently across different environments.

## 2. What is a Docker Image?
A Docker image is a packaged template used to create containers.

Example:
day34-python-app:1.0

## 3. What is a Docker Container?
A container is a running instance of a Docker image.

Example:
day34-container

## 4. What is a Dockerfile?
A Dockerfile contains instructions to build a Docker image.

Important instructions:

- FROM: Selects the base image.
- WORKDIR: Sets the working directory.
- COPY: Copies files into the image.
- EXPOSE: Documents the application port.
- CMD: Defines the default command to run.

## 5. Docker Commands

### Check Docker Version
docker --version

### Build Docker Image
docker build -f "CI-CD\Day-34\Dockerfile" -t day34-python-app:1.0 .

### List Docker Images
docker images

### Run Container
docker run -d --name day34-container -p 8000:8000 day34-python-app:1.0

### Check Running Containers
docker ps

### Test Application
Invoke-WebRequest http://localhost:8000 -UseBasicParsing

### View Container Logs
docker logs day34-container

### Stop Container
docker stop day34-container

### Remove Container
docker rm day34-container

## 6. Port Mapping

Command:
-p 8000:8000

Meaning:
- First 8000: Host machine port.
- Second 8000: Container application port.

This mapping makes the container application accessible at:

http://localhost:8000

## 7. Docker and GitHub Actions

GitHub Actions automates the Docker build and application testing process.

Our workflow performs:

1. Repository checkout.
2. Docker image build.
3. Container startup.
4. HTTP application test.
5. Container cleanup.

Workflow file:
.github/workflows/day34-docker-ci.yml

## 8. Important Difference

Docker Image:
A packaged template.

Docker Container:
A running instance created from an image.

Dockerfile:
Instructions used to build an image.

GitHub Actions:
Automates the build and testing workflow.

## 9. Practical Result

- Docker image built successfully.
- Container started successfully.
- Application returned HTTP 200 OK.
- GitHub Actions Docker CI workflow completed successfully.

## 10. Key Learning

Learned how to create a Docker image, run a container, expose an application port, test a containerized application, and automate Docker CI using GitHub Actions.