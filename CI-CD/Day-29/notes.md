
# Day-29 Notes: GitHub Actions Job Dependencies

## 1. What are Job Dependencies?
Job dependencies define which job must finish successfully before another job can start.

## 2. What is `needs`?
The `needs` keyword tells GitHub Actions to wait for another job to complete successfully before running the dependent job.

Example:
`needs: setup`

This means the current job depends on the job named `setup`.

## 3. Workflow Execution Order
The Day-29 workflow contains four jobs:

1. `setup` — prepares the demonstration environment.
2. `build` — runs after `setup`.
3. `test` — runs after `build`.
4. `deploy` — runs after `test`.

Execution flow:

`setup → build → test → deploy`

## 4. Why are Dependencies Useful?
- They control the order in which jobs run.
- They help organize multi-stage CI/CD pipelines.
- They prevent dependent jobs from running before their prerequisites succeed.
- By default, if a required job fails, its dependent jobs are skipped.

## 5. Important Difference
Jobs without dependencies may run in parallel. Jobs connected using `needs` follow the specified dependency order.

## 6. Practical Result
I manually triggered the GitHub Actions workflow. All four jobs completed successfully in the expected order.

Note: This practical uses echo commands to demonstrate job dependencies. It does not perform a real application build, test, or deployment.

## 7. Key Takeaway
The `needs` keyword is useful for controlling job execution order in GitHub Actions.
