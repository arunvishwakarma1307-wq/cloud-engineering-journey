# Day 05 - Jenkins Pipeline Commands

## 1. Navigate to Cloud Engineering Journey

cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey"

## 2. Start Jenkins Container

docker run -d --name jenkins-day01 -p 8080:8080 -p 50000:50000 -v jenkins_day01_home:/var/jenkins_home jenkins/jenkins:lts-jdk21

## 3. Check Running Containers

docker ps

## 4. Create Day 05 Screenshots Folder

mkdir jenkins\Day-05\Screenshots -Force

## 5. Jenkins Dashboard URL

http://localhost:8080

## 6. Jenkins Pipeline Script

pipeline {
    agent any

    stages {
        stage('Welcome') {
            steps {
                echo 'Welcome to Jenkins Day 05'
                echo 'Learning Jenkins Pipeline'
            }
        }

        stage('Build') {
            steps {
                echo 'Build stage executed successfully'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploy stage executed successfully'
            }
        }
    }
}

---

Cloud Engineering Journey - Day 05