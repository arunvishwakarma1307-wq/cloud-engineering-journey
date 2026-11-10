# Day 08 - Jenkins Pipeline Environment Variables

## 1. Navigate to Project Folder

    cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey"

## 2. Start Jenkins Container

    docker run -d --name jenkins-day01 -p 8080:8080 -p 50000:50000 -v jenkins_day01_home:/var/jenkins_home jenkins/jenkins:lts-jdk21

## 3. Check Running Container

    docker ps

## 4. Open Jenkins Dashboard

    http://localhost:8080

## 5. Create Day 08 Folder

    New-Item -ItemType Directory -Force -Path "jenkins\Day-08\Screenshots"

## 6. Jenkins Pipeline Script

    pipeline {
        agent any

        environment {
            APP_NAME = 'Cloud Guard'
            APP_ENVIRONMENT = 'development'
            DEPLOY_REGION = 'ap-south-1'
        }

        stages {
            stage('Welcome') {
                steps {
                    echo 'Welcome to Jenkins Day 08'
                }
            }

            stage('Show Custom Variables') {
                steps {
                    echo "Application Name: ${env.APP_NAME}"
                    echo "Application Environment: ${env.APP_ENVIRONMENT}"
                    echo "Deployment Region: ${env.DEPLOY_REGION}"
                }
            }

            stage('Show Jenkins Built-in Variables') {
                steps {
                    echo "Job Name: ${env.JOB_NAME}"
                    echo "Build Number: ${env.BUILD_NUMBER}"
                    echo "Build URL: ${env.BUILD_URL}"
                    echo "Workspace: ${env.WORKSPACE}"
                }
            }
        }
    }

## 7. Git Status

    git status

## 8. Stage Day 08 Files

    git add jenkins/Day-08/

## 9. Verify Staged Files

    git status

## 10. Commit Day 08

    git commit -m "Complete Jenkins Day 08 - Pipeline Environment Variables"

## 11. Push to GitHub

    git push origin main

## 12. Stop Jenkins Container

    docker stop jenkins-day01

## 13. Remove Jenkins Container

    docker rm jenkins-day01

## 14. Verify Persistent Volume

    docker volume ls