\# Day 10 - Jenkins Pipeline Parallel Stages



\## 1. What are Parallel Stages?



Parallel Stages allow Jenkins to execute multiple stages simultaneously instead of running them one after another.



This helps reduce pipeline execution time when tasks are independent of each other.



Example:

\- Linux Testing

\- Security Testing

\- Code Quality Check



These tasks can run at the same time.



\## 2. What is the parallel Directive?



The `parallel` directive is used inside a Declarative Pipeline stage to define multiple stages that can execute simultaneously.



Syntax:



&#x20;   stage('Parallel Testing') {

&#x20;       parallel {

&#x20;           stage('Linux Testing') {

&#x20;               steps {

&#x20;                   echo 'Running Linux Testing'

&#x20;               }

&#x20;           }



&#x20;           stage('Security Testing') {

&#x20;               steps {

&#x20;                   echo 'Running Security Testing'

&#x20;               }

&#x20;           }

&#x20;       }

&#x20;   }



\## 3. Sequential vs Parallel Execution



\### Sequential Execution



In sequential execution:

\- First stage completes.

\- Second stage starts.

\- Third stage starts after the second stage completes.



Example:



&#x20;   stage('Build') {

&#x20;       steps {

&#x20;           echo 'Building application'

&#x20;       }

&#x20;   }



&#x20;   stage('Test') {

&#x20;       steps {

&#x20;           echo 'Testing application'

&#x20;       }

&#x20;   }



\### Parallel Execution



In parallel execution:

\- Multiple independent stages start together.

\- Each stage performs its own task.

\- Jenkins waits for all parallel branches to finish before continuing to the next stage.



\## 4. Benefits of Parallel Stages



\- Reduces overall pipeline execution time.

\- Allows independent tasks to run simultaneously.

\- Improves CI/CD workflow efficiency.

\- Helps perform multiple types of testing together.



\## 5. Real-World Use Cases



Parallel execution can be useful for:



| Task | Purpose |

|---|---|

| Linux Testing | Test application on Linux |

| Security Testing | Check application security |

| Code Quality Check | Analyze code quality |

| Unit Testing | Execute application unit tests |



Note: These are examples of real-world uses. Our Day 10 practical only demonstrated parallel execution using Jenkins echo statements.



\## 6. Important Points



\- Parallel branches should contain independent tasks.

\- Jenkins waits for all parallel branches to finish.

\- The next sequential stage runs after parallel execution completes.

\- Each parallel branch should have its own stage.

\- Parallel execution can require additional Jenkins executor resources.



\## 7. Day 10 Practical Learning



In this practical, I learned:



\- What Jenkins Parallel Stages are.

\- How to use the `parallel` directive.

\- How to create multiple parallel stages.

\- How to execute independent tasks simultaneously.

\- How to verify parallel execution using Jenkins Stage View and Console Output.



\## Conclusion



Jenkins Parallel Stages help improve CI/CD pipeline efficiency by executing independent tasks simultaneously.

