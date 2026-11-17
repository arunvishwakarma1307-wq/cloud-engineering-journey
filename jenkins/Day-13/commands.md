
# Day 13 - Jenkins Credentials Management Commands

## 1. Navigate to Project

cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey"

## 2. Navigate to Jenkins Day-13

cd jenkins\Day-13

## 3. Start Jenkins Container

docker run -d --name jenkins-day01 -p 8080:8080 -p 50000:50000 -v jenkins_day01_home:/var/jenkins_home jenkins/jenkins:lts-jdk21

## 4. Verify Jenkins Container

docker ps

## 5. Open Jenkins Dashboard

http://localhost:8080

## 6. Jenkins Credentials Configuration

Navigation:

Manage Jenkins
    → Credentials
        → System
            → Global credentials (unrestricted)
                → Add Credentials

Credential Details:

Kind: Username with password
Scope: Global
Username: demo-user
Password: Dummy practice password
ID: jenkins-demo-credential
Description: Day 13 Jenkins Credentials Demo

Note: Dummy credentials were used for this practical.

## 7. Jenkins Pipeline Job

Job Name:

Day13-Pipeline-Credentials

## 8. Jenkins Pipeline Script

pipeline {
    agent any

    stages {
        stage('Welcome') {
            steps {
                echo 'Welcome to Jenkins Day 13'
            }
        }

        stage('Use Credentials') {
            steps {
                withCredentials([
                    usernamePassword(
                        credentialsId: 'jenkins-demo-credential',
                        usernameVariable: 'DEMO_USERNAME',
                        passwordVariable: 'DEMO_PASSWORD'
                    )
                ]) {
                    echo 'Credentials loaded successfully!'
                    echo "Username: ${DEMO_USERNAME}"

                    script {
                        if (env.DEMO_PASSWORD) {
                            echo 'Password is available securely.'
                        }
                    }
                }
            }
        }

        stage('Build Complete') {
            steps {
                echo 'Day 13 Pipeline completed!'
            }
        }
    }
}

## 9. Execute Pipeline

1. Open Day13-Pipeline-Credentials.
2. Click Build Now.
3. Open Build History.
4. Select the latest build.
5. Open Console Output.
6. Verify credential access.
7. Confirm build status is SUCCESS.

## 10. Git Commands

Navigate to project root:

cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey"

Check Git status:

git status

Stage only Day-13 folder:

git add jenkins/Day-13/

Verify staged files:

git status

Commit Day-13:

git commit -m "Complete Jenkins Day 13 - Credentials Management"

Push to GitHub:

git push origin main

## 11. Jenkins Cleanup

Stop Jenkins container:

docker stop jenkins-day01

Remove Jenkins container:

docker rm jenkins-day01

Verify Docker volumes:

docker volume ls

Important: Do not delete jenkins_day01_home volume. It stores Jenkins jobs and configuration.
