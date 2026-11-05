# Day 03 — Jenkins Upstream and Downstream Jobs

## 1. Docker Commands (PowerShell)

docker run -d --name jenkins-day01 -p 8080:8080 -p 50000:50000 -v jenkins_day01_home:/var/jenkins_home jenkins/jenkins:lts-jdk21

docker ps

docker logs --tail 50 jenkins-day01

docker exec jenkins-day01 cat /var/jenkins_home/secrets/initialAdminPassword

mkdir jenkins\Day-03\Screenshots -Force


## 2. Upstream Job — Execute Shell

echo "Day 03 - Upstream Job Started"
echo "Upstream Job Executed Successfully"


## 3. Downstream Job — Execute Shell

echo "Day 03 - Downstream Job Started"
echo "Triggered automatically by Upstream Job"
echo "Downstream Job Executed Successfully"


---
Cloud Engineering Journey — Day 03