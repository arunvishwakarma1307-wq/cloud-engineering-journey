# Day 02 - GitHub Actions Multiple Jobs and Job Dependencies

## Objective

The objective of Day 02 was to understand how multiple jobs can be used inside a GitHub Actions CI pipeline and how one job can depend on another job using the `needs` keyword.

The practical focused on creating a simple CI pipeline with a **Build** job followed by a **Test** job.

---

## CI Pipeline Structure

The workflow was designed with the following execution flow:

```text
GitHub Push
    ↓
Build Job
    ↓
Test Job
```

The `test` job was configured with:

```yaml
needs: build
```

This means the Test job depends on the successful completion of the Build job.

---

## GitHub Actions Workflow

The workflow file used for this practical was:

```text
.github/workflows/ci.yml
```

The pipeline contains two jobs:

```text
build
test
```

The Build job performs the initial CI stage and the Test job runs after the Build job completes successfully.

---

## Multiple Jobs - Successful Execution

The first test verified that both jobs could execute successfully.

The workflow completed with:

```text
build  ✅
test   ✅
```

The Test job executed after the Build job because of the dependency defined using `needs: build`.

### Screenshot

**File name:** `01-multiple-jobs-success.png`

![Multiple jobs successful execution](screenshots/01-multiple-jobs-success.png)

---

## Testing Job Dependency Failure

To verify that the dependency was actually working, the Build job was intentionally failed using:

```text
exit 1
```

This caused the Build job to fail.

The Test job depended on the Build job through:

```yaml
needs: build
```

Therefore, when Build failed, the Test job did not execute.

The resulting flow was:

```text
build  ❌
   ↓
test   ⏭️
```

This confirmed that the Test job was correctly dependent on the Build job.

### Screenshot

**File name:** `02-build-failure-test-skipped.png`

![Build failure and test skipped](screenshots/02-build-failure-test-skipped.png)

---

## Build Failure Logs

The detailed Build job logs were checked to verify the reason for the failure.

The log showed:

```text
Starting build stage...
Repository checkout successful.
Build stage failed intentionally.
Error: Process completed with exit code 1.
```

The failure was intentionally introduced only for testing the job dependency behavior.

### Screenshot

**File name:** `03-build-failure-logs.png`

![Build failure logs](screenshots/03-build-failure-logs.png)

---

## Restoring the Successful Pipeline

After completing the dependency failure test, the intentional failure was removed.

The Build job was restored to:

```text
Starting build stage...
Repository checkout successful.
Build stage completed successfully.
```

The Test job remained dependent on the Build job:

```yaml
needs: build
```

The final workflow was therefore restored to the successful execution flow:

```text
build  ✅
   ↓
test   ✅
```

---

## Final CI Pipeline

The final Day-02 pipeline contains:

```text
GitHub
   ↓
CI Pipeline
   ↓
Build Job
   ↓
Test Job
```

The dependency between the jobs ensures that the Test stage does not run when the Build stage fails.

### Final Successful Run

**File name:** `04-final-multiple-jobs-success.png`

![Final multiple jobs successful pipeline](screenshots/04-final-multiple-jobs-success.png)

---

## Practical CI Flow

The practical demonstrated the following CI behavior:

```text
Code Push
    ↓
GitHub Actions
    ↓
Build Job
    ↓
Build Successful?
   ↙       ↘
 Yes       No
  ↓         ↓
Test      Test Skipped
  ↓
CI Result
```

This type of dependency is useful when later stages should only execute after earlier stages have completed successfully.

---

## What I Learned

- GitHub Actions multiple jobs
- Job execution flow
- `needs` keyword
- Job dependencies
- Build and Test stages
- Successful job execution
- Intentional job failure testing
- Skipped jobs
- GitHub Actions failure logs
- Exit code `1`
- Restoring a failed workflow
- Basic CI pipeline dependency handling

---

## Final Result

Successfully created and tested a GitHub Actions CI pipeline containing multiple jobs.

The practical verified both scenarios:

```text
Successful:
Build ✅ → Test ✅
```

and:

```text
Failure:
Build ❌ → Test Skipped
```

The workflow was finally restored to a successful state and pushed to GitHub.