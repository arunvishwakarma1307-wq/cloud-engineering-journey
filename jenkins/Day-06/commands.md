# Day 06 - Jenkins Pipeline Commands

## 1. Navigate to Cloud Engineering Journey

cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey"

## 2. Start Jenkins Container

docker run -d --name jenkins-day01 -p 8080:8080 -p 50000:50000 -v jenkins_day01_home:/var/jenkins_home jenkins/jenkins:lts-jdk21

## 3. Check Running Containers

docker ps

## 4. Create Day 06 Screenshots Folder

mkdir jenkins\Day-06\Screenshots -Force

## 5. Jenkins Dashboard URL

http://localhost:8080

## 6. Jenkins Pipeline Script

pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Day 06 Build Stage Started'
                echo 'Build completed successfully'
            }
        }

        stage('Test') {
            steps {
                echo 'Day 06 Test Stage Started'
                echo 'All tests passed successfully'
            }
        }
    }

    post {
        success {
            echo 'SUCCESS: Pipeline completed successfully'
        }

        failure {
            echo 'FAILURE: Pipeline execution failed'
        }

        always {
            echo 'ALWAYS: Pipeline execution finished'
        }
    }
}

## 7. Intentional Failure Test

Inside the Test stage, add:

error 'Intentional failure for Day 06 testing'

## 8. Stop Jenkins Container

docker stop jenkins-day01

## 9. Remove Jenkins Container

docker rm jenkins-day01

## 10. Verify Persistent Volume

docker volume ls

---

Cloud Engineering Journey - Day 06