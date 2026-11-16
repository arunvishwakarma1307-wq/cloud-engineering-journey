# Day 12 - Jenkins Pipeline Timeout and Retry

## 1. Navigate to Project Folder

    cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey"

## 2. Create Day 12 Folder Structure

    New-Item -ItemType Directory -Force -Path "jenkins\Day-12\Screenshots"

    New-Item -ItemType File -Force -Path "jenkins\Day-12\README.md"
    New-Item -ItemType File -Force -Path "jenkins\Day-12\notes.md"
    New-Item -ItemType File -Force -Path "jenkins\Day-12\commands.md"

## 3. Start Jenkins Container

    docker run -d --name jenkins-day01 -p 8080:8080 -p 50000:50000 -v jenkins_day01_home:/var/jenkins_home jenkins/jenkins:lts-jdk21

## 4. Verify Jenkins Container

    docker ps

## 5. Open Jenkins Dashboard

    http://localhost:8080

## 6. Jenkins Pipeline Job

Job Name: `Day12-Pipeline-Timeout-Retry`

## 7. Jenkins Pipeline Script

    pipeline {
        agent any

        stages {
            stage('Welcome') {
                steps {
                    echo 'Welcome to Jenkins Day 12'
                }
            }

            stage('Retry Example') {
                steps {
                    script {
                        env.RETRY_COUNT = '0'
                    }

                    retry(3) {
                        script {
                            int attempt = env.RETRY_COUNT.toInteger() + 1
                            env.RETRY_COUNT = attempt.toString()

                            echo "Executing attempt: ${attempt}"

                            if (attempt < 3) {
                                error('Simulated temporary failure')
                            }

                            echo 'Task completed successfully!'
                        }
                    }
                }
            }

            stage('Timeout Example') {
                steps {
                    timeout(time: 1, unit: 'MINUTES') {
                        echo 'Starting timeout example...'
                        sleep(time: 5, unit: 'SECONDS')
                        echo 'Task completed within timeout!'
                    }
                }
            }

            stage('Build Complete') {
                steps {
                    echo 'All pipeline stages completed!'
                }
            }
        }
    }

## 8. Git Commands

### Check Git Status

    git status

### Add Day 12 Files

    git add jenkins/Day-12/

### Verify Staged Files

    git status

### Commit Changes

    git commit -m "Complete Jenkins Day 12 - Pipeline Timeout and Retry"

### Push to GitHub

    git push origin main

## 9. Stop Jenkins Container

    docker stop jenkins-day01

## 10. Remove Jenkins Container

    docker rm jenkins-day01

## 11. Verify Persistent Volume

    docker volume ls

Note: Do not delete the `jenkins_day01_home` volume. It stores Jenkins jobs and configuration.