# Day 35 - End-to-End CI/CD Pipeline Commands

## 1. Check Python Version

Command:

python --version

Purpose:
Checks the installed Python version.

## 2. Install Project Dependencies

Command:

python -m pip install -r "CI-CD\Day-35\requirements.txt"

Purpose:
Installs the dependencies listed in requirements.txt.

## 3. Check Pytest Version

Command:

python -m pytest --version

Purpose:
Displays the installed Pytest version.

## 4. Run Python Application

Command:

python "CI-CD\Day-35\app\app.py"

Purpose:
Runs the Python application and displays its status.

## 5. Run Automated Tests

Command:

python -m pytest "CI-CD\Day-35\tests" -v

Purpose:
Runs the project's automated tests.

The -v option displays detailed test results.

## 6. Check Docker Version

Command:

docker version

Purpose:
Checks Docker Client and Server information.

## 7. Build Docker Image

Command:

docker build -t day35-cicd-app:1.0 -f "CI-CD\Day-35\Dockerfile" "CI-CD\Day-35"

Purpose:
Builds a Docker image using the project's Dockerfile.

Image name:

day35-cicd-app:1.0

## 8. Check Docker Images

Command:

docker images

Purpose:
Lists the Docker images available locally.

## 9. Run Docker Container

Command:

docker run --name day35-container day35-cicd-app:1.0

Purpose:
Creates and runs a container from the Docker image.

## 10. Check Docker Containers

Command:

docker ps -a

Purpose:
Lists all Docker containers, including stopped containers.

Note:
The application runs and exits after printing its output. An Exited (0) status indicates successful completion.

## 11. Remove Docker Container

Command:

docker rm day35-container

Purpose:
Removes the stopped test container.

## 12. Check Git Status

Command:

git status

Purpose:
Displays modified, staged, and untracked files.

## 13. Add Project Files to Git

Command:

git add .gitignore .github/workflows/day35-e2e-cicd.yml CI-CD/Day-35/

Purpose:
Stages the Day-35 project files for committing.

## 14. Commit Project Changes

Command:

git commit -m "Add Day 35 end-to-end CI-CD pipeline project"

Purpose:
Creates a Git commit containing the staged changes.

## 15. Push Changes to GitHub

Command:

git push

Purpose:
Uploads the committed changes to the remote GitHub repository.

## 16. Check YAML Syntax

Command:

python -c "import yaml; yaml.safe_load(open('.github/workflows/day35-e2e-cicd.yml', encoding='utf-8')); print('YAML syntax check passed')"

Purpose:
Checks whether the GitHub Actions workflow YAML file can be parsed successfully.

## 17. Check Project Screenshots

Command:

Get-ChildItem "CI-CD\Day-35\Screenshots"

Purpose:
Lists the screenshots saved in the Day-35 Screenshots folder.

## 18. GitHub Actions Verification

Steps:

1. Open the GitHub repository.
2. Navigate to the Actions tab.
3. Open the Day-35 workflow run.
4. Verify that all three jobs completed successfully.
5. Check the uploaded day35-app-package artifact.

Expected successful jobs:

- Run Python Tests
- Build Docker Image
- Validate Deployment Package

## 19. Important GitHub Actions Workflow File

File path:

.github/workflows/day35-e2e-cicd.yml

Purpose:

Defines the automated CI/CD pipeline, including Python testing, Docker image building, artifact uploading, and package validation.

## Project Completion

The Day-35 pipeline was successfully tested locally and through GitHub Actions.

The project demonstrates automated testing, Docker containerization, artifact creation, and deployment-package validation.