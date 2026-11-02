# Day 35 - End-to-End CI/CD Pipeline Notes

## 1. Introduction to CI/CD

CI/CD is a software development practice that helps automate the process of building, testing, and delivering applications.

CI/CD stands for:

- CI – Continuous Integration
- CD – Continuous Delivery or Continuous Deployment

It helps developers identify errors early and deliver software more efficiently.

## 2. Continuous Integration (CI)

Continuous Integration is the practice of frequently integrating code changes into a shared repository.

Whenever developers push code changes, an automated pipeline can:

- Check out the latest source code.
- Install project dependencies.
- Run automated tests.
- Identify errors before further stages.

In this project, GitHub Actions performs automated Python testing using Pytest.

## 3. Continuous Delivery and Deployment (CD)

Continuous Delivery means preparing and validating an application package so it is ready for release.

Continuous Deployment means automatically releasing validated changes to a target environment.

In this project, the pipeline creates and validates an application ZIP package. It does not perform an actual production deployment.

## 4. What is GitHub Actions?

GitHub Actions is a CI/CD automation platform provided by GitHub.

It allows developers to automate tasks such as:

- Running tests.
- Building applications.
- Creating Docker images.
- Uploading artifacts.
- Running deployment workflows.

Workflows are defined using YAML files inside the .github/workflows directory.

## 5. What is Pytest?

Pytest is a Python testing framework used to write and execute automated tests.

It helps verify whether application functions produce the expected results.

In this project, Pytest checks:

- Application name.
- Application status.
- Application message.

The test passes when all assertions are satisfied.

## 6. What is Docker?

Docker is a containerization platform used to package applications and their required dependencies into containers.

Important Docker concepts:

- Dockerfile: Instructions used to build a Docker image.
- Docker Image: A template used to create containers.
- Docker Container: A running instance of a Docker image.
- Docker Build: Creates an image from a Dockerfile.

In this project, Docker builds an image of the Python application and runs a container to verify that the application works.

## 7. Understanding GitHub Actions Workflow

The Day-35 workflow contains three jobs.

### Job 1: Run Python Tests

This job performs the following tasks:

1. Checks out the repository.
2. Sets up Python 3.14.
3. Installs project dependencies.
4. Runs Pytest.
5. Verifies that the automated tests pass.

### Job 2: Build Docker Image

This job runs after the testing job succeeds.

It performs the following tasks:

1. Checks out the repository.
2. Builds the Docker image.
3. Runs the Docker container.
4. Creates a ZIP package containing application files.
5. Uploads the package as a GitHub Actions artifact.

### Job 3: Validate Deployment Package

This job runs after the Docker build job succeeds.

It performs the following tasks:

1. Downloads the uploaded artifact.
2. Checks whether the ZIP package exists.
3. Verifies that the package is not empty.
4. Lists the contents of the ZIP package.

This confirms that the application package is available and contains the expected files.

## 8. What is a GitHub Actions Artifact?

An artifact is a file or collection of files produced during a GitHub Actions workflow.

Artifacts can be uploaded and downloaded between workflow jobs.

In this project, the application ZIP package is uploaded using actions/upload-artifact and downloaded using actions/download-artifact.

The artifact name is:

day35-app-package

## 9. Understanding Job Dependencies

GitHub Actions uses the needs keyword to define dependencies between jobs.

In this project:

- The build job depends on the test job.
- The deploy validation job depends on the build job.

This ensures that the next job starts only after its required previous job succeeds.

## 10. Workflow Triggers

The Day-35 workflow supports two triggers:

- push: Runs automatically when relevant project files are pushed to GitHub.
- workflow_dispatch: Allows the workflow to be started manually from GitHub Actions.

The push trigger is restricted to Day-35 project files and its workflow file.

## 11. Important Commands

Install Python dependencies:

python -m pip install -r "CI-CD\Day-35\requirements.txt"

Run automated tests:

python -m pytest "CI-CD\Day-35\tests" -v

Build Docker image:

docker build -t day35-cicd-app:1.0 -f "CI-CD\Day-35\Dockerfile" "CI-CD\Day-35"

Run Docker container:

docker run --name day35-container day35-cicd-app:1.0

Check Docker containers:

docker ps -a

Remove the test container:

docker rm day35-container

## 12. Key Learnings

- Understood the basic concept of End-to-End CI/CD.
- Learned the difference between CI and CD.
- Practiced automated testing with Pytest.
- Built and executed a Docker image and container.
- Created a GitHub Actions workflow using YAML.
- Learned how workflow jobs depend on one another.
- Created and uploaded a ZIP artifact.
- Downloaded and validated an artifact in another job.
- Verified the complete pipeline through GitHub Actions.

## 13. Project Result

The Day-35 CI/CD pipeline was successfully tested locally and through GitHub Actions.

All three workflow jobs completed successfully:

1. Run Python Tests
2. Build Docker Image
3. Validate Deployment Package

The project demonstrates automated testing, Docker image building, artifact creation, and package validation.

Note: Actual production deployment is not included in this project.