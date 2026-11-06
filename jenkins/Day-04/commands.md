# Day 04 - Jenkins Build Triggers Commands

## 1. Start Jenkins Container

docker run -d --name jenkins-day01 -p 8080:8080 -p 50000:50000 -v jenkins_day01_home:/var/jenkins_home jenkins/jenkins:lts-jdk21

## 2. Check Running Docker Containers

docker ps

## 3. Navigate to Cloud Engineering Journey Repository

cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey"

## 4. Create Day 04 Screenshots Folder

mkdir jenkins\Day-04\Screenshots -Force

## 5. Create Poll SCM Test File

Set-Content -Path "jenkins\Day-04\poll-scm-test.txt" -Value "Testing Jenkins Poll SCM - Day 04"

## 6. Stage Poll SCM Test File

git add jenkins/Day-04/poll-scm-test.txt

## 7. Commit Changes

git commit -m "Test Jenkins Day 04 Poll SCM trigger"

## 8. Push Changes to GitHub

git push origin main

---

## Jenkins Configuration Values

Job Name:
Day04-Build-Trigger-Job

Build Periodically Schedule:
H/5 * * * *

Poll SCM Schedule:
H/5 * * * *

GitHub Repository:
https://github.com/arunvishwakarma1307-wq/cloud-engineering-journey.git

Branch:
*/main

## Jenkins Execute Shell Script

echo "=================================="
echo "Welcome to Jenkins Day 04"
echo "Build Trigger Executed Automatically"
echo "Build Number: $BUILD_NUMBER"
echo "Job Name: $JOB_NAME"
echo "=================================="

---

Cloud Engineering Journey - Day 04