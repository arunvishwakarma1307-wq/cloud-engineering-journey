
JENKINS DAY 14 – BUILD ARTIFACTS & ARCHIVING
============================================

1. PROJECT FOLDER OPEN KARNA

cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey"


2. JENKINS CONTAINER START KARNA

docker start jenkins-day01


3. CONTAINER STATUS CHECK KARNA

docker ps


4. JENKINS DASHBOARD OPEN KARNA

http://localhost:8080


5. JENKINS JOB DETAILS

Job Name:
Day14-Pipeline-Build-Artifacts

Pipeline Type:
Pipeline


6. PIPELINE SCRIPT

pipeline {
    agent any

    stages {
        stage('Welcome') {
            steps {
                echo 'Welcome to Jenkins Day 14'
            }
        }

        stage('Generate Build Artifact') {
            steps {
                script {
                    writeFile file: 'build-info.txt',
                              text: 'Cloud Engineering Journey - Jenkins Day 14\nBuild Artifacts and Archiving\n'
                }
                echo 'Build artifact generated successfully!'
            }
        }

        stage('Archive Artifact') {
            steps {
                archiveArtifacts artifacts: 'build-info.txt',
                                 fingerprint: true
                echo 'Build artifact archived successfully!'
            }
        }

        stage('Build Complete') {
            steps {
                echo 'Day 14 Pipeline completed!'
            }
        }
    }
}


7. PIPELINE EXECUTE KARNA

1. Open Day14-Pipeline-Build-Artifacts.
2. Click Build Now.
3. Wait for the build to complete.
4. Open Build #1.
5. Check Console Output.
6. Verify the Artifacts section.
7. Download build-info.txt.


8. GENERATED ARTIFACT DETAILS

File Name:
build-info.txt

Pipeline Step:
writeFile

Archive Step:
archiveArtifacts

Fingerprinting:
Enabled (true)

Build Status:
SUCCESS


9. GIT STATUS CHECK KARNA

cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey"

git status


10. DAY 14 FILES STAGE KARNA

git add jenkins/Day-14/


11. STAGING VERIFY KARNA

git status

IMPORTANT:
Only stage jenkins/Day-14/.
Do not stage unrelated deleted files.


12. COMMIT KARNA

git commit -m "Complete Jenkins Day 14 - Build Artifacts and Archiving"


13. GITHUB PAR PUSH KARNA

git push origin main


14. FINAL STATUS CHECK

git status


15. JENKINS CLEANUP

Stop Jenkins container:

docker stop jenkins-day01

Remove Jenkins container:

docker rm jenkins-day01

Verify Docker volumes:

docker volume ls


IMPORTANT:
Do not delete the jenkins_day01_home volume.
It contains persistent Jenkins data, including jobs and credentials.

Day 14 Practical Completed.
