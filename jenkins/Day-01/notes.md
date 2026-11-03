# Jenkins Day-01 — Notes

## 1. What is Jenkins?

Jenkins is an open-source automation server used to automate software development tasks.

It helps developers automate:
- Building applications
- Running tests
- Packaging applications
- Deploying applications

## 2. What is CI/CD?

### Continuous Integration (CI)
CI means regularly integrating code changes into a shared repository and checking them through automated builds and tests.

### Continuous Delivery
It keeps software ready for release through an automated delivery process.

### Continuous Deployment
It automatically releases successfully tested changes to production.

## 3. Jenkins Architecture

Jenkins mainly uses two components:

### Controller
- Manages Jenkins configuration.
- Creates and manages jobs.
- Schedules builds.
- Monitors agents and build results.

### Agent
- Executes build tasks.
- Runs scripts and tests.
- Sends build results back to the controller.

Note: In a simple setup, Jenkins can also execute builds on the controller itself.

## 4. Job, Build and Pipeline

### Job
A job is a task configured in Jenkins.

### Build
A build is one execution of a Jenkins job.

### Pipeline
A pipeline is a sequence of automated steps such as build, test and deployment.

## 5. Jenkins Job Types

### Freestyle Project
A basic job that can be configured through the Jenkins web interface.

### Pipeline
A job that defines an automated workflow using pipeline steps.

### Multibranch Pipeline
Automatically discovers and manages pipelines for different branches of a repository.

## 6. Jenkins Plugins

Plugins extend Jenkins functionality.

Examples:
- Git plugin
- Pipeline plugin
- Docker-related plugins

## 7. Jenkinsfile

A Jenkinsfile is a text file that defines a Jenkins Pipeline as code.

It is generally stored in the project's source code repository.

## 8. Docker and Jenkins

Docker was used to run Jenkins inside a container.

Jenkins was accessed through:

http://localhost:8080

A Docker volume was used to preserve Jenkins data.

## 9. First Freestyle Job Practical

Job Name: Day01-First-Job

Job Type: Freestyle Project

Build Step: Execute shell

The shell script displayed:
- Welcome message
- Build number
- Job name
- Operating system

## 10. Error and Solution

### Error
The first attempt used Execute Windows batch command.

It failed because Jenkins was running inside a Linux Docker container.

### Solution
Removed the Windows batch build step and selected Execute shell.

The job then executed successfully.

## 11. Important Jenkins Environment Variables

| Variable | Meaning |
|---|---|
| BUILD_NUMBER | Current build number |
| JOB_NAME | Name of the Jenkins job |

## 12. Important Learning

- Jenkins automates software development tasks.
- Controller manages Jenkins activities.
- Agents execute assigned tasks.
- A job is a configured task.
- A build is an execution of a job.
- The build step must match the execution environment.
- Console Output helps troubleshoot build errors.

## Conclusion

Day-01 covered Jenkins fundamentals, CI/CD, Jenkins architecture, job types, plugins, and Jenkinsfile. I also installed Jenkins using Docker and successfully executed my first Freestyle Project.