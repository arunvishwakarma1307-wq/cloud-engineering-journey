# Day 01 - GitHub Actions Basic CI Workflow

## Objective

The objective of this practical was to understand and implement a basic Continuous Integration (CI) workflow using GitHub Actions.

The workflow was configured to run automatically when changes were pushed to the `main` branch.

---

## What is CI?

Continuous Integration (CI) is a process where code changes pushed to a Git repository are automatically checked by a CI system.

In this practical, GitHub Actions was used as the CI system.

The basic flow was:

    Local Repository
          ↓
    Git Commit
          ↓
    Git Push
          ↓
    GitHub
          ↓
    GitHub Actions
          ↓
    CI Job
          ↓
    Success / Failure

---

## GitHub Actions Workflow

The workflow file was created at:

    .github/workflows/ci.yml

The workflow was configured to run when code was pushed to the `main` branch or when a pull request was created for the `main` branch.

The workflow uses an Ubuntu runner and performs the following steps:

1. Starts the CI job.
2. Checks out the repository.
3. Runs the CI check.
4. Reports whether the workflow succeeds or fails.

---

## Successful CI Run

After pushing the workflow to GitHub, GitHub Actions automatically detected the push and started the workflow.

The first workflow execution completed successfully.

### Result

    Workflow: Basic CI
    Trigger: Push
    Branch: main
    Status: Success
    Job: ci

### Screenshot 1

**File name:** `01-github-actions-success.png`

![GitHub Actions successful CI run](screenshots/01-github-actions-success.png)

---

## Testing CI Failure Handling

To understand how CI detects problems, an intentional failure was introduced into the workflow using:

    exit 1

The updated workflow was committed and pushed to GitHub.

GitHub Actions automatically started another workflow run.

The CI job failed as expected.

### Result

    Workflow: Test CI failure handling
    Status: Failure
    Job: ci
    Error: Process completed with exit code 1

### Screenshot 2

**File name:** `02-github-actions-failure.png`

![GitHub Actions intentional failure](screenshots/02-github-actions-failure.png)

---

## Failure Logs

The failed `ci` job was opened to inspect the workflow logs.

The log showed:

    Starting CI check...
    Repository checkout successful.
    This check will fail intentionally.
    Error: Process completed with exit code 1.

This demonstrated how GitHub Actions identifies the failed step and provides logs for troubleshooting.

### Screenshot 3

**File name:** `03-github-actions-failure-logs.png`

![GitHub Actions failure logs](screenshots/03-github-actions-failure-logs.png)

---

## Fixing the CI Workflow

The intentional failure was removed from the workflow.

The corrected workflow was committed and pushed again.

GitHub Actions automatically started another workflow run.

The new run completed successfully.

### Result

    Workflow: Fix CI workflow check
    Trigger: Push
    Branch: main
    Status: Success
    Job: ci

### Screenshot 4

**File name:** `04-github-actions-fixed-success.png`

![GitHub Actions fixed successful run](screenshots/04-github-actions-fixed-success.png)

---

## Final CI Logs

The final successful CI job was opened and its individual steps were verified.

The workflow successfully completed:

    Set up job              ✓
    Checkout repository     ✓
    Run CI check            ✓
    Post Checkout           ✓
    Complete job            ✓

The CI check completed successfully after the intentional failure was removed.

### Screenshot 5

**File name:** `05-github-actions-fixed-success-logs.png`

![Final GitHub Actions CI logs](screenshots/05-github-actions-fixed-success-logs.png)

---

## Practical CI Flow

The complete practical flow was:

    Create GitHub Actions workflow
                ↓
    Commit workflow
                ↓
    Push to GitHub
                ↓
    GitHub Actions automatically runs
                ↓
    CI succeeds
                ↓
    Introduce intentional failure
                ↓
    Push changes
                ↓
    CI fails
                ↓
    Inspect failure logs
                ↓
    Fix workflow
                ↓
    Push changes again
                ↓
    CI succeeds

---

## What I Learned

- Continuous Integration (CI)
- GitHub Actions
- GitHub Actions workflow
- `.github/workflows` directory
- Workflow triggers
- Jobs and steps
- GitHub Actions runner
- Repository checkout
- CI success and failure
- Reading CI logs
- Debugging a failed CI workflow
- Fixing and re-running CI after a failure

---

## Final Result

A basic GitHub Actions CI workflow was successfully created and tested.

The practical verified the complete CI cycle:

**Push → Automatic CI Run → Success → Failure → Log Inspection → Fix → Success**

This provided a practical understanding of how GitHub Actions can automatically check changes after they are pushed to a repository.