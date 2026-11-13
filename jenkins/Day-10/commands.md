\# Day 10 - Jenkins Pipeline Parallel Stages



\## 1. Navigate to Project Folder



&#x20;   cd "C:\\Users\\ArunVishwakarma\\Desktop\\cloud engineering journey"



\## 2. Create Day 10 Folder Structure



&#x20;   New-Item -ItemType Directory -Force -Path "jenkins\\Day-10\\Screenshots"

&#x20;   New-Item -ItemType File -Force -Path "jenkins\\Day-10\\README.md"

&#x20;   New-Item -ItemType File -Force -Path "jenkins\\Day-10\\notes.md"

&#x20;   New-Item -ItemType File -Force -Path "jenkins\\Day-10\\commands.md"



\## 3. Start Jenkins Container



&#x20;   docker run -d --name jenkins-day01 -p 8080:8080 -p 50000:50000 -v jenkins\_day01\_home:/var/jenkins\_home jenkins/jenkins:lts-jdk21



\## 4. Verify Jenkins Container



&#x20;   docker ps



\## 5. Open Jenkins Dashboard



&#x20;   http://localhost:8080



\## 6. Jenkins Pipeline Script



Job Name: `Day10-Pipeline-Parallel-Stages`



&#x20;   pipeline {

&#x20;       agent any



&#x20;       stages {

&#x20;           stage('Welcome') {

&#x20;               steps {

&#x20;                   echo 'Welcome to Jenkins Day 10'

&#x20;               }

&#x20;           }



&#x20;           stage('Parallel Testing') {

&#x20;               parallel {

&#x20;                   stage('Linux Testing') {

&#x20;                       steps {

&#x20;                           echo 'Running Linux Testing...'

&#x20;                           echo 'Linux Testing Completed!'

&#x20;                       }

&#x20;                   }



&#x20;                   stage('Security Testing') {

&#x20;                       steps {

&#x20;                           echo 'Running Security Testing...'

&#x20;                           echo 'Security Testing Completed!'

&#x20;                       }

&#x20;                   }



&#x20;                   stage('Code Quality Check') {

&#x20;                       steps {

&#x20;                           echo 'Running Code Quality Check...'

&#x20;                           echo 'Code Quality Check Completed!'

&#x20;                       }

&#x20;                   }

&#x20;               }

&#x20;           }



&#x20;           stage('Build Complete') {

&#x20;               steps {

&#x20;                   echo 'All parallel stages completed!'

&#x20;               }

&#x20;           }

&#x20;       }

&#x20;   }



\## 7. Git Commands



\### Check Git Status



&#x20;   git status



\### Add Day 10 Files



&#x20;   git add jenkins/Day-10/



\### Verify Staged Files



&#x20;   git status



\### Commit Changes



&#x20;   git commit -m "Complete Jenkins Day 10 - Pipeline Parallel Stages"



\### Push to GitHub



&#x20;   git push origin main



\## 8. Stop Jenkins Container



&#x20;   docker stop jenkins-day01



\## 9. Remove Jenkins Container



&#x20;   docker rm jenkins-day01



\## 10. Verify Persistent Volume



&#x20;   docker volume ls



Note: Do not delete the `jenkins\_day01\_home` volume. It stores Jenkins jobs and configuration.

