# Day 01 - Continuous Integration and GitHub Actions

## Continuous Integration

Continuous Integration is a software development approach where developers regularly integrate their changes into a shared codebase.

Instead of waiting until a large amount of code is completed, smaller changes can be checked regularly.

The main goal is to detect problems earlier in the development process.

---

## Why CI is Needed

Without CI, a developer may make several changes and discover problems much later.

This can make troubleshooting harder because many changes may be involved.

CI provides frequent automated verification of changes.

Basic idea:

    Small Code Change
          ↓
    Automated Verification
          ↓
    Quick Feedback

---

## Traditional Manual Checking vs CI

### Manual Checking

A developer may need to:

- Pull the latest code
- Install dependencies
- Run checks manually
- Run tests manually
- Inspect the result

This process can be repeated many times during development.

### Continuous Integration

The same type of verification can be automated.

    Developer Change
          ↓
    Repository Event
          ↓
    Automated Checks
          ↓
    Result

This reduces repetitive manual work.

---

## GitHub Actions

GitHub Actions is an automation service integrated into GitHub.

It can respond to repository events and execute predefined automation tasks.

It is commonly used for:

- Continuous Integration
- Continuous Delivery
- Testing
- Building applications
- Code quality checks
- Deployment automation

---

## Workflow File

A GitHub Actions workflow is a YAML configuration that describes an automated process.

The workflow configuration contains information about:

- What the workflow is called
- Which events activate it
- Which jobs should execute
- Which environment should be used
- Which tasks should be performed

Workflow files use the `.yml` or `.yaml` format.

---

## Workflow Directory

GitHub looks for Actions workflow files inside:

    .github/workflows/

This directory has a special meaning in a GitHub repository.

Multiple workflow files can exist in the same directory.

For example:

    .github/
        workflows/
            ci.yml
            tests.yml
            deploy.yml

Each workflow can have its own purpose and trigger conditions.

---

## Events

An event is something that tells GitHub Actions that a workflow may need to start.

Examples include:

- `push`
- `pull_request`
- `workflow_dispatch`
- Scheduled events

Different events can be used for different automation requirements.

For example, a development team may run checks after every push and perform a different workflow when a pull request is created.

---

## Jobs

A job represents a logical unit of work.

A workflow can contain multiple jobs.

For example:

    Workflow
       ├── Test
       ├── Build
       └── Security Check

Jobs can be configured independently and may run in parallel when appropriate.

---

## Steps

A job is made up of individual steps.

Each step performs a particular operation.

Examples include:

- Preparing the environment
- Downloading repository code
- Installing software
- Running tests
- Running shell commands

Steps normally execute sequentially within their job.

---

## Runner

A runner is the execution environment used by GitHub Actions to run a job.

The runner provides resources such as:

- Operating system
- CPU
- Memory
- Shell environment
- Required tools

Common runner environments include Linux, Windows, and macOS.

A workflow can select an appropriate runner depending on the project requirements.

---

## Checkout Concept

A runner starts as an execution environment and does not automatically contain the repository's working files.

A checkout operation makes the repository contents available inside the runner.

This allows later steps to access project files and perform operations on them.

---

## Command Execution

GitHub Actions can execute shell commands through workflow steps.

For example, a workflow can run commands for:

- Testing
- Building
- File validation
- Dependency installation
- Application checks

The command output becomes part of the workflow logs.

---

## Exit Status

Operating-system commands normally return an exit status after execution.

A common convention is:

    0 → Successful execution
    Non-zero → Error or unsuccessful execution

This concept is important in CI because the automation system can use the command's exit status to determine whether a step succeeded.

For example:

    Command
       ↓
    Exit Status
       ↓
    CI Result

---

## Failure Detection

A CI system does not need to understand the entire application to detect every problem.

Many failures can be detected from the status returned by commands and tools.

For example:

    Test Command
        ↓
    Test Fails
        ↓
    Non-zero Exit Status
        ↓
    CI Step Fails

This allows automation to stop or report a problem instead of silently continuing.

---

## Logs

Logs are the recorded output produced while a workflow is executing.

They are useful for understanding:

- Which job was running
- Which step was executing
- What command produced output
- Where an error occurred
- What message was returned

Logs are one of the main tools used for troubleshooting CI failures.

---

## CI Feedback

One important benefit of CI is fast feedback.

A developer can receive information about a change soon after it is submitted.

Conceptually:

    Developer
       ↓
    Change
       ↓
    Automated Verification
       ↓
    Feedback

The feedback can indicate whether the configured checks completed successfully or encountered a problem.

---

## CI and Team Development

CI becomes especially useful when multiple developers work on the same project.

Frequent automated checks can help identify integration problems before changes become part of a larger release.

A typical development process can look like:

    Developer A
        ↓
    Code Repository
        ↑
    Developer B
        ↓
    Automated Checks

The exact checks depend on the project.

---

## CI Does Not Mean Deployment

Continuous Integration and deployment are related but different concepts.

### CI

Focuses mainly on integrating and verifying code changes.

### CD

Extends the automation process toward delivering or deploying software.

A simplified relationship is:

    Continuous Integration
             ↓
        Build / Verify
             ↓
    Continuous Delivery
             ↓
         Deployment

CI can therefore be considered one important part of a larger software delivery pipeline.

---

## CI Pipeline Growth

A basic CI workflow may initially perform only a simple check.

As a project grows, more stages can be added.

For example:

    Checkout
       ↓
    Install Dependencies
       ↓
    Lint
       ↓
    Test
       ↓
    Build
       ↓
    Security Checks

The exact pipeline depends on the technology and requirements of the project.

---

## Key Concepts

- Continuous Integration
- GitHub Actions
- Workflow
- Workflow events
- Jobs
- Steps
- Runner
- Repository checkout
- Shell command execution
- Exit status
- Workflow logs
- Automated feedback
- CI and CD relationship