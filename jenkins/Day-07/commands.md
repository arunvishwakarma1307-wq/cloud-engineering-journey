# Day 07 - Jenkins Pipeline Commands

## 1. Navigate to Cloud Engineering Journey

cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey"

## 2. Start Jenkins Container

docker run -d --name jenkins-day01 -p 8080:8080 -p 50000:50000 -v jenkins_day01_home:/var/jenkins_home jenkins/jenkins:lts-jdk21

## 3. Check Running Containers

docker ps

## 4. Create Day 07 Screenshots Folder

mkdir jenkins\Day-07\Screenshots -Force

## 5. Jenkins Dashboard URL

http://localhost:8080

## 6. Jenkins Pipeline Script

pipeline {
    agent any

    stages {
        stage('Welcome') {
            steps {
                echo 'Welcome to Jenkins Day 07'
            }
        }

        stage('Show Environment') {
            steps {
                echo "Selected Environment: ${params.APP_ENVIRONMENT}"
            }
        }

        stage('Deployment') {
            steps {
                echo "Preparing deployment for ${params.APP_ENVIRONMENT}"
                echo 'Deployment stage completed successfully'
            }
        }
    }
}

## 7. Choice Parameter Configuration

Parameter Type: Choice Parameter

Name: APP_ENVIRONMENT

Choices:
development
staging
production

Description: Select the application deployment environment

## 8. Stop Jenkins Container

docker stop jenkins-day01

## 9. Remove Jenkins Container

docker rm jenkins-day01

## 10. Verify Persistent Volume

docker volume ls

---

Cloud Engineering Journey - Day 07