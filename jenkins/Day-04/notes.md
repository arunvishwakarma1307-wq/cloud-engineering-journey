# Day 04 - Jenkins Build Triggers

## 1. What are Jenkins Build Triggers?

Build Triggers are used to start Jenkins jobs automatically without manually clicking the Build Now button.

They help automate the CI/CD process by executing jobs based on specific conditions or schedules.

## 2. What is Build Periodically?

Build periodically is a Jenkins feature that automatically runs a job according to a predefined time schedule.

It does not depend on changes in the GitHub repository.

In our practical, we configured the job to run approximately every 5 minutes.

### How It Works

1. Jenkins reads the configured schedule.
2. Jenkins waits for the scheduled time.
3. Jenkins automatically starts the build.
4. The job executes its configured build steps.
5. We verify the result through Console Output.

## 3. What is Cron Syntax?

Jenkins uses Cron syntax to define when a job should execute.

Cron schedule contains five fields:

- Minute
- Hour
- Day of the Month
- Month
- Day of the Week

The schedule used in our practical was:

H/5 * * * *

Meaning:

The job runs approximately every 5 minutes.

The letter H represents a hashed value selected by Jenkins to distribute scheduled builds.

## 4. What is Poll SCM?

Poll SCM stands for Poll Source Code Management.

It is a Jenkins feature that periodically checks a connected source code repository, such as GitHub, for new changes.

If Jenkins detects a new commit, it automatically triggers the configured job.

### How It Works

1. Jenkins connects to the configured GitHub repository.
2. Jenkins checks the repository according to the polling schedule.
3. Jenkins compares the latest repository revision with the previously checked revision.
4. If new changes are detected, Jenkins triggers a build.
5. The build executes the configured steps.

## 5. Difference Between Build Periodically and Poll SCM

| Build Periodically | Poll SCM |
|---|---|
| Runs jobs according to a time schedule. | Checks the source code repository for changes. |
| Does not require a Git repository. | Requires a connected source code repository. |
| Runs even if no source code changes occur. | Triggers a build when changes are detected. |
| Used for scheduled execution. | Used for repository change detection. |

## 6. What is Source Code Management (SCM)?

Source Code Management is used to manage and track changes in project source code.

Jenkins supports Git as a Source Code Management tool.

In our practical, we connected a GitHub repository to Jenkins.

This allowed Jenkins to check the repository for new commits using Poll SCM.

## 7. What is a Git Commit?

A Git commit records changes made to files in a local Git repository.

Each commit contains information about the changes and a commit message.

Jenkins can detect new commits when it checks the connected GitHub repository.

## 8. What is Automatic Build Triggering?

Automatic Build Triggering means Jenkins starts a job without requiring a user to manually select Build Now.

In our practical, two automatic triggering methods were tested:

1. Build Periodically - Triggered a build according to the configured schedule.
2. Poll SCM - Triggered a build after detecting a new GitHub commit.

## 9. What is Console Output?

Console Output displays the execution logs of a Jenkins build.

It helps us understand:

- Whether the build started successfully.
- Which source code revision was checked out.
- Whether build steps executed correctly.
- Whether the build completed successfully or failed.

## 10. Practical Learning Summary

In this practical, we learned how to:

- Configure Jenkins Build Triggers.
- Schedule automatic builds using Build periodically.
- Understand Cron schedule syntax.
- Connect a GitHub repository to Jenkins.
- Configure Poll SCM.
- Detect new GitHub commits.
- Trigger Jenkins builds automatically.
- Verify build execution through Console Output.

---

Cloud Engineering Journey - Day 04