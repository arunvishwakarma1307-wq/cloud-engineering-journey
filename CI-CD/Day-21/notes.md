
# Day-21 Notes: Pull Request CI Check

## 1. What is Pull Request CI?
Pull Request CI is an automated process that runs checks when a Pull Request targets a specific branch.

It helps identify problems before changes are merged into the main branch.

## 2. What is a Pull Request?
A Pull Request (PR) is a request to merge changes from one Git branch into another branch.

Example:
- Source branch: `day21-pull-request`
- Target branch: `main`

## 3. What is the `pull_request` Trigger?
The `pull_request` trigger tells GitHub Actions to run a workflow when a matching Pull Request event occurs.

In Day-21, the workflow targets Pull Requests whose base branch is `main`.

## 4. Workflow File
The workflow is stored at:

`.github/workflows/day21-pull-request-check.yml`

[Click here to view the Day-21 workflow file](../../.github/workflows/day21-pull-request-check.yml)

## 5. Important Workflow Concepts

### `on: pull_request`
Starts the workflow when a matching Pull Request event occurs.

### `branches: - main`
Limits this workflow trigger to Pull Requests targeting `main`.

### `permissions: contents: read`
Allows the workflow to read repository contents without granting write access through this permission.

### `runs-on: ubuntu-latest`
Runs the job on a GitHub-hosted Ubuntu runner.

### `actions/checkout@v4`
Checks out the repository so workflow steps can access its files.

### `test -f`
Checks whether a specified file exists. If it does not exist, the command returns a failure status.

## 6. Why Did the First Run Fail?
The initial workflow checked for a root-level `README.md`, but this repository did not have that file at the root.

The validation failed because the expected path was incorrect.

## 7. How Was It Fixed?
The workflow was updated to check the actual repository paths:

- `CI-CD/Day-20/README.md`
- `.github/workflows/day21-pull-request-check.yml`

After the correction, the Day-21 CI check passed.

## 8. Practical Result
- Created a dedicated Pull Request CI workflow.
- Triggered it through a Pull Request targeting `main`.
- Investigated a failed validation.
- Corrected the file paths.
- Verified the successful CI run.
- Merged the Pull Request into `main`.

## 9. Key Learning
Always verify file paths against the actual repository structure. A workflow can fail even when its YAML syntax is valid if its validation commands check incorrect paths.

## 10. Quick Revision
- **CI:** Continuous Integration
- **PR:** Pull Request
- **Trigger:** Event that starts a workflow
- **Runner:** Machine that executes a workflow job
- **Checkout:** Makes repository files available to the job
- **Validation:** Checks whether expected conditions are met
- **Merge:** Combines changes from one branch into another
