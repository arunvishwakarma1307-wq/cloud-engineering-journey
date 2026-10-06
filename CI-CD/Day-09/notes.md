# Day-09 — GitHub Actions Conditional Job Execution — Notes

## 1. Job Dependencies

GitHub Actions workflows can contain multiple jobs.

Jobs can be connected using the `needs` keyword.

Example:

    jobs:
      test:
        needs: build

This means the `test` job depends on the `build` job.

The dependent job normally waits for the required job to complete before starting.

---

## 2. The `needs` Keyword

The `needs` keyword defines a dependency between jobs.

Example:

    deploy:
      needs: test

This means the `deploy` job depends on the `test` job.

The workflow can therefore create a sequence such as:

    build → test → deploy

Job dependencies are useful when one stage must complete before another stage begins.

---

## 3. Conditional Job Execution

GitHub Actions supports conditions using the `if` keyword.

Example:

    deploy:
      if: ${{ success() }}

The condition determines whether the job should execute.

Conditions can be used to control workflow behavior based on previous results or other expressions.

---

## 4. The `success()` Function

`success()` is a GitHub Actions status check function.

It evaluates to true when the required previous steps or jobs have completed successfully.

Example:

    if: ${{ success() }}

When the condition evaluates to true, the related job or step can run.

---

## 5. Combining `needs` and `if`

`needs` and `if` can be used together.

Example:

    deploy:
      needs: test
      if: ${{ success() }}

Here:

- `needs: test` creates a dependency on the `test` job.
- `if: ${{ success() }}` controls execution based on successful completion.

This provides better control over multi-stage CI/CD workflows.

---

## 6. CI/CD Job Flow

A common CI/CD workflow can be organized into stages:

    Build
      ↓
    Test
      ↓
    Deploy

The build stage prepares the application.

The test stage verifies the application.

The deploy stage can run after successful testing.

This creates a controlled delivery process.

---

## 7. Why Conditional Jobs Are Useful

Conditional execution helps prevent later stages from running when an earlier stage has failed.

For example, deployment should normally happen only after testing succeeds.

This reduces the chance of deploying an unsuccessful or unverified build.

---

## 8. Job Dependency vs Step Dependency

A job dependency controls the relationship between complete jobs.

Example:

    test:
      needs: build

A step condition controls the execution of an individual step inside a job.

Example:

    - name: Deploy
      if: ${{ success() }}

Both mechanisms can be used to control workflow execution, but they operate at different levels.

---

## 9. Important Concept

`needs` defines **which job must complete first**.

`if` defines **whether the job or step should execute**.

Together, they allow workflows to implement controlled CI/CD stages.

---

## 10. Key Takeaways

- GitHub Actions workflows can contain multiple jobs.
- The `needs` keyword creates job dependencies.
- The `if` keyword controls conditional execution.
- `success()` checks whether required previous execution was successful.
- Job dependencies can create a Build → Test → Deploy flow.
- Conditional deployment helps prevent deployment after unsuccessful stages.
- `needs` works at the job level, while step-level conditions can control individual steps.
```

Available next action: :contentReference[oaicite:0]{index=0}