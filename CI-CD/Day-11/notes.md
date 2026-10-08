# CI/CD Day-11 — Continue-on-Error

## What is continue-on-error?

`continue-on-error` is a GitHub Actions option that allows workflow execution to continue even when a step or job fails.

It is useful when a failure should be recorded but should not stop the remaining workflow execution.

## Basic Syntax

```yaml
continue-on-error: true
```

When this option is applied to a step, that step can fail without stopping the following steps in the job.

## How It Works

Normally:

```text
Step 1
  ↓
Step 2 fails ❌
  ↓
Following steps may not run
```

With `continue-on-error: true`:

```text
Step 1
  ↓
Step 2 fails ❌
  ↓
Workflow continues
  ↓
Step 3 runs ✅
```

## Important Point

`continue-on-error` does **not** make the failed command itself successful.

The command can still return a failure such as exit code `1`.

Instead, GitHub Actions is instructed to continue workflow execution after that failure.

## Common Uses

`continue-on-error` can be useful for:

- Optional checks
- Non-critical validation
- Experimental steps
- Reporting or diagnostic tasks
- Tasks where one failure should not stop the remaining workflow

## Step-Level vs Job-Level

`continue-on-error` can be used at different levels.

### Step-Level

```yaml
- name: Optional check
  continue-on-error: true
  run: |
    echo "Running optional check..."
```

Only that particular step is allowed to fail without stopping the job.

### Job-Level

A job can also be configured to continue despite failure:

```yaml
continue-on-error: true
```

This affects the behavior of the complete job.

## Key Difference

`continue-on-error` and `always()` solve different problems.

### continue-on-error

Allows execution to continue after a failure.

### always()

Allows a step or job to run regardless of the previous result.

```text
continue-on-error
→ failure happens
→ execution continues

always()
→ previous result does not prevent execution
→ step/job runs
```

## Key Takeaway

`continue-on-error` is useful when a failure is expected or non-critical and the remaining workflow should still continue.