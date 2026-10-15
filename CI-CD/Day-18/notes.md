
# Day-18 Notes: GitHub Actions Conditional Execution

## 1. What Is Conditional Execution?

Conditional execution means running a workflow step only when a specified condition is satisfied.

In GitHub Actions, the `if` keyword is used to apply conditions to jobs and steps.

## 2. The `if` Keyword

The `if` keyword decides whether a step or job should run.

Example:

```yaml
if: ${{ true }}
```

The condition is true, so the step runs.

Example:

```yaml
if: ${{ false }}
```

The condition is false, so the step is skipped.

## 3. The `success()` Function

The `success()` function returns true when all previous steps have succeeded or have not failed or been cancelled.

Example:

```yaml
- name: Run After Successful Steps
  if: ${{ success() }}
  run: echo "Previous steps succeeded."
```

This step runs when the success condition is satisfied.

## 4. What Does Skipped Mean?

A skipped step is a step that GitHub Actions did not execute because its condition was not satisfied.

Skipped does not automatically mean that the workflow failed.

## 5. Difference Between `true` and `false`

| Condition | Result |
|---|---|
| `if: ${{ true }}` | Step runs |
| `if: ${{ false }}` | Step is skipped |
| `if: ${{ success() }}` | Runs when the success condition is satisfied |

## 6. Where Is Conditional Execution Useful?

- Running tests only for a particular branch.
- Deploying only after successful tests.
- Running steps only when files change.
- Skipping unnecessary tasks.
- Controlling jobs based on previous results.

## 7. Important Points

- `if` controls whether a step or job runs.
- A true condition allows execution.
- A false condition skips execution.
- `success()` checks the outcome of previous steps.
- GitHub Actions supports other status-check functions, such as `failure()` and `always()`.

## Summary

Conditional execution helps control workflow behavior. It makes CI/CD pipelines more flexible by allowing steps and jobs to run only when required.
