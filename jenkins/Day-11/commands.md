# Day 11 - Jenkins Pipeline Manual Approval

## 1. Navigate to Project Folder

    cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey"

## 2. Create Day 11 Folder Structure

    New-Item -ItemType Directory -Force -Path "jenkins\Day-11\Screenshots"

    New-Item -ItemType File -Force -Path "jenkins\Day-11\README.md"
    New-Item -ItemType File -Force -Path "jenkins\Day-11\notes.md"
    New-Item -ItemType File -Force -Path "jenkins\Day-11\commands.md"

## 3. Start Jenkins Container

    docker run -d --name jenkins-day01 -p 8080:8080 -p 50000:50000 -v jenkins_day01_home:/var/jenkins_home jenkins/jenkins:lts-jdk21

## 4. Verify Jenkins Container

    docker ps

## 5. Open Jenkins Dashboard

    http://localhost:8080

## 6. Jenkins Pipeline Job

Job Name: `Day11-Pipeline-Manual-Approval`

## 7. Jenkins Pipeline Script

    pipeline {
        agent any

        stages {
            stage('Welcome') {
                steps {
                    echo 'Welcome to Jenkins Day 11'
                }
            }

            stage('Build') {
                steps {
                    echo 'Building application...'
                    echo 'Build completed successfully!'
                }
            }

            stage('Manual Approval') {
                steps {
                    input message: 'Do you approve the deployment?',
                          ok: 'Proceed'
                }
            }

            stage('Deploy') {
                steps {
                    echo 'Deployment approved!'
                    echo 'Deploying application...'
                    echo 'Deployment completed successfully!'
                }
            }
        }
    }

## 8. Git Commands

### Check Git Status

    git status

### Add Day 11 Files

    git add jenkins/Day-11/

### Verify Staged Files

    git status

### Commit Changes

    git commit -m "Complete Jenkins Day 11 - Pipeline Manual Approval"

### Push to GitHub

    git push origin main

## 9. Stop Jenkins Container

    docker stop jenkins-day01

## 10. Remove Jenkins Container

    docker rm jenkins-day01

## 11. Verify Persistent Volume

    docker volume ls

Note: Do not delete the `jenkins_day01_home` volume. It stores Jenkins jobs and configuration.