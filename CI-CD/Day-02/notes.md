# Day 02 - GitHub Actions Jobs and Dependencies

## GitHub Actions Jobs

A GitHub Actions workflow can contain multiple jobs.

A job is an independent unit of work inside a workflow. Each job can contain its own runner, steps, commands, and configuration.

Multiple jobs allow a CI pipeline to separate different stages of work.

---

## Job Isolation

By default, jobs are independent from each other.

Each job normally gets its own runner environment.

For example:

```text
Job A → Runner A

Job B → Runner B
```

A job does not automatically wait for another job to finish.

---

## Job Execution Order

When multiple jobs do not have dependencies, GitHub Actions can run them independently.

Example:

```text
Job A ──┐
        ├── Workflow
Job B ──┘
```

This can be useful when tasks do not depend on each other.

---

## Job Dependencies

Sometimes one stage should only start after another stage has completed successfully.

GitHub Actions provides the `needs` keyword for defining job dependencies.

Conceptually:

```yaml
test:
  needs: build
```

This creates a dependency relationship between the two jobs.

---

## The `needs` Keyword

The `needs` keyword specifies that a job depends on another job.

For example:

```yaml
jobs:
  build:
    ...

  test:
    needs: build
    ...
```

The relationship becomes:

```text
build
  ↓
test
```

The dependent job waits for the required job.

---

## Dependency and Failure

A normal job dependency also affects failure behavior.

If the required job fails, the dependent job is not normally executed.

Conceptually:

```text
Build Successful
       ↓
     Test
```

But:

```text
Build Failed
      ↓
Test does not execute
```

This allows pipelines to prevent later stages from running when an earlier required stage has failed.

---

## Exit Status

Commands executed by a CI job return an exit status.

A successful command normally returns:

```text
0
```

A non-zero exit status indicates that an error or failure occurred.

For example:

```text
exit 1
```

represents a failed command execution.

GitHub Actions uses these exit statuses to determine whether a step has succeeded or failed.

---

## Job Success and Failure

A job is successful when its required steps complete successfully.

If a required step fails, the job can become unsuccessful.

This creates a basic decision point in a CI pipeline:

```text
Step
 ↓
Success? ── Yes → Continue
    │
    No
    ↓
Job Failure
```

---

## Build and Test Stages

CI pipelines are often divided into logical stages.

A simplified model is:

```text
Build
  ↓
Test
```

The Build stage prepares or validates the application.

The Test stage checks whether the resulting code behaves as expected.

The exact stages depend on the type of project.

---

## Sequential Pipeline

When dependencies are defined, jobs can form a sequential pipeline.

Example:

```text
Build
  ↓
Test
  ↓
Package
  ↓
Deploy
```

Each stage can depend on the successful completion of the previous stage.

---

## Dependency Chain

Multiple dependencies can form a chain.

For example:

```yaml
test:
  needs: build

package:
  needs: test
```

The logical relationship becomes:

```text
Build
  ↓
Test
  ↓
Package
```

This is useful for creating controlled CI/CD stages.

---

## Parallel Jobs

Not every job needs to depend on another job.

Independent jobs can run separately.

Example:

```text
       ┌── Security Check
       │
Build ─┼── Unit Tests
       │
       └── Code Quality
```

Parallel execution can reduce unnecessary waiting when the tasks are independent.

---

## Job Dependencies in CI/CD

Job dependencies help control the movement of code through a pipeline.

A simplified CI/CD structure can be:

```text
Source Code
    ↓
Build
    ↓
Test
    ↓
Package
    ↓
Deployment
```

Each stage can be connected using dependencies where required.

---

## Why Job Dependencies Matter

Job dependencies provide control over pipeline execution.

They can help ensure that:

- Required stages finish before later stages start.
- Failed stages prevent dependent stages from running.
- Pipeline stages have a predictable order.
- Complex workflows can be divided into logical units.
- Independent tasks can remain separate.

---

## Key Concepts

```text
Workflow
   ↓
Jobs
   ↓
Steps
   ↓
Dependencies
   ↓
Execution Result
```

Important terms:

- **Workflow** — complete automation definition.
- **Job** — a unit of work inside a workflow.
- **Step** — an individual action or command inside a job.
- **Runner** — environment where a job executes.
- **Dependency** — relationship requiring one job to wait for another.
- **`needs`** — GitHub Actions keyword used to define job dependencies.
- **Exit status** — result code indicating command success or failure.

---

## CI Pipeline Design

A well-structured CI pipeline separates different responsibilities into logical jobs.

For example:

```text
Build
  ↓
Test
  ↓
Package
```

As pipelines become more advanced, additional stages such as security scanning, artifact creation, deployment, and approval can be added.

The goal is to make the flow predictable, automated, and easier to maintain.