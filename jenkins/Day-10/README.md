\# Day 10 - Jenkins Pipeline Parallel Stages



\## Overview

This practical demonstrates how to execute multiple stages simultaneously using the `parallel` directive in a Jenkins Declarative Pipeline.



\## Objective

\- Understand Jenkins Parallel Stages.

\- Use the `parallel` directive.

\- Execute multiple tasks simultaneously.

\- Verify parallel execution through Jenkins Stage View and Console Output.



\## Jenkins Job

`Day10-Pipeline-Parallel-Stages`



\## Parallel Stages



Three parallel stages were configured:



| Stage | Task |

|---|---|

| Linux Testing | Demonstrates Linux testing execution |

| Security Testing | Demonstrates security testing execution |

| Code Quality Check | Demonstrates code quality checking |



\## Pipeline Execution



1\. Created a Jenkins Pipeline job.

2\. Added a Welcome stage.

3\. Configured three parallel stages.

4\. Added a Build Complete stage.

5\. Executed Build #1 successfully.

6\. Verified all parallel stages in Jenkins Stage View.



\## Screenshots



\### 1. Parallel Stages Console Output

!\[Console Output](Screenshots/01-parallel-stages-console-output.png)



\### 2. Pipeline Configuration

!\[Pipeline Configuration](Screenshots/02-pipeline-parallel-configuration.png)



\### 3. Pipeline Job Dashboard

!\[Pipeline Dashboard](Screenshots/03-pipeline-job-dashboard.png)



\## Result



Successfully implemented Jenkins Declarative Pipeline parallel stages and verified the execution of all three parallel branches.



\*\*Build Status:\*\* SUCCESS



\*\*Note:\*\* This practical demonstrates parallel execution using echo statements. No actual security scan or code quality tool was executed.

