# Day 09 - Jenkins Pipeline when Conditions

## 1. Navigate to Project Folder

    cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey"

## 2. Start Jenkins Container

    docker run -d --name jenkins-day01 -p 8080:8080 -p 50000:50000 -v jenkins_day01_home:/var/jenkins_home jenkins/jenkins:lts-jdk21

## 3. Check Running Container

    docker ps

## 4. Open Jenkins Dashboard

    http://localhost:8080

## 5. Create Day 09 Folder

    New-Item -ItemType Directory -Force -Path "jenkins\Day-09\Screenshots"

## 6. Jenkins Pipeline Script

    pipeline {
        agent any

        environment {
            APP_ENVIRONMENT = 'development'
        }

        stages {
            stage('Welcome') {
                steps {
                    echo 'Welcome to Jenkins Day 09'
                }
            }

            stage('Development Deployment') {
                when {
                    environment name: 'APP_ENVIRONMENT', value: 'development'
                }
                steps {
                    echo 'Development environment condition matched!'
                    echo 'Running Development Deployment Stage'
                }
            }

            stage('Production Deployment') {
                when {
                    environment name: 'APP_ENVIRONMENT', value: 'production'
                }
                steps {
                    echo 'Production environment condition matched!'
                    echo 'Running Production Deployment Stage'
                }
            }

            stage('Build Complete') {
                steps {
                    echo 'Pipeline execution completed!'
                }
            }
        }
    }

## 7. Check Git Status

    git status

## 8. Stage Day 09 Files

    git add jenkins/Day-09/

## 9. Verify Staged Files

    git status

## 10. Commit Day 09

    git commit -m "Complete Jenkins Day 09 - Pipeline when Conditions"

## 11. Push to GitHub

    git push origin main

## 12. Stop Jenkins Container

    docker stop jenkins-day01

## 13. Remove Jenkins Container

    docker rm jenkins-day01

## 14. Verify Persistent Volume

    docker volume ls