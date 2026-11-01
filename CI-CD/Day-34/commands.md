# Day-34: Docker and GitHub Actions — Commands

## 1. Navigate to Repository

cd "$HOME\Desktop\cloud engineering journey"

## 2. Check Docker Version

docker --version

## 3. Check Docker Engine

docker info

## 4. Create Day-34 Folders

mkdir "CI-CD\Day-34"
mkdir "CI-CD\Day-34\app"
mkdir "CI-CD\Day-34\Screenshots"

## 5. Open Python Application

notepad "CI-CD\Day-34\app\app.py"

## 6. Open Dockerfile

notepad "CI-CD\Day-34\Dockerfile"

## 7. Build Docker Image

docker build -f "CI-CD\Day-34\Dockerfile" -t day34-python-app:1.0 .

## 8. List Docker Images

docker images day34-python-app

## 9. Run Docker Container

docker run -d --name day34-container -p 8000:8000 day34-python-app:1.0

## 10. Check Running Containers

docker ps

## 11. Test Application

Invoke-WebRequest http://localhost:8000 -UseBasicParsing

## 12. View Container Logs

docker logs day34-container

## 13. Stop Container

docker stop day34-container

## 14. Remove Container

docker rm day34-container

## 15. Open GitHub Actions Workflow

notepad ".github\workflows\day34-docker-ci.yml"

## 16. Check Git Status

git status

## 17. Stage Day-34 Files

git add ".github/workflows/day34-docker-ci.yml" "CI-CD/Day-34/"

## 18. Commit Changes

git commit -m "Complete Day 34 Docker CI pipeline"

## 19. Push Changes to GitHub

git push origin main

## 20. Verify Git Status

git status

## 21. Verify Docker CI

Open GitHub Repository → Actions → Day 34 - Docker CI

Check that the latest workflow run is successful.

## 22. Screenshots

01-day34-docker-image-build.png
02-day34-container-running.png
03-day34-github-actions-success.png