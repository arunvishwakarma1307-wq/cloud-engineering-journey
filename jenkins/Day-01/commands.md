# Jenkins Day-01 — Commands

## 1. Check Docker Version

docker --version

Purpose: Checks the installed Docker version.

## 2. Check Docker Information

docker info

Purpose: Displays Docker client and server information.

## 3. Download Jenkins LTS Image

docker pull jenkins/jenkins:lts-jdk21

Purpose: Downloads the Jenkins LTS image with JDK 21.

## 4. Start Jenkins Container

docker run -d --name jenkins-day01 -p 8080:8080 -p 50000:50000 -v jenkins_day01_home:/var/jenkins_home jenkins/jenkins:lts-jdk21

Purpose:
- -d runs the container in the background.
- --name assigns a container name.
- -p maps container ports to host ports.
- -v stores Jenkins data in a Docker volume.

## 5. Check Running Containers

docker ps

Purpose: Displays running Docker containers.

## 6. Get Initial Jenkins Admin Password

docker exec jenkins-day01 cat /var/jenkins_home/secrets/initialAdminPassword

Purpose: Reads the initial administrator password from the Jenkins container.

Note: Never share or publish the actual password.

## 7. Access Jenkins

http://localhost:8080

Purpose: Opens the Jenkins web interface in a browser.

## 8. First Freestyle Job Details

Job Name: Day01-First-Job
Job Type: Freestyle Project
Build Step: Execute shell

### Shell Script

echo "=================================="
echo "Welcome to My First Jenkins Job"
echo "=================================="
echo "Jenkins is working successfully!"
echo "Day 01 - First Freestyle Project"
echo "Build Number: $BUILD_NUMBER"
echo "Job Name: $JOB_NAME"
echo "Operating System:"
uname -s

Purpose:
- echo displays messages.
- $BUILD_NUMBER displays the current build number.
- $JOB_NAME displays the Jenkins job name.
- uname -s displays the operating system.

## 9. Execute the Jenkins Job

1. Open Day01-First-Job.
2. Click Build Now.
3. Open the latest build.
4. Click Console Output.
5. Check for Finished: SUCCESS.

## 10. Error and Solution

Error:
The first build attempt used Execute Windows batch command.

Reason:
Jenkins was running inside a Linux Docker container, where Windows cmd was unavailable.

Solution:
Changed the build step to Execute shell. The next build completed successfully.

## 11. Useful Docker Commands

docker ps -a

Purpose: Displays all containers, including stopped containers.

docker images

Purpose: Lists downloaded Docker images.

docker volume ls

Purpose: Lists Docker volumes.

## Conclusion

These commands were used to download the Jenkins image, start the Jenkins container, access the Jenkins dashboard, and execute the first Freestyle Job successfully.