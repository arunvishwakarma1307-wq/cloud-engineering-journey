# Day-28 Notes: GitHub Actions Matrix Strategy

## 1. What Is Matrix Strategy?

Matrix Strategy allows a single GitHub Actions job to run with multiple configurations.

It reduces the need to create separate jobs for every operating system or software version.

## 2. Why Do We Use Matrix Strategy?

- Test software on multiple operating systems.
- Check compatibility with different software versions.
- Reduce repetitive workflow configuration.
- Run multiple job combinations automatically.

## 3. Matrix Configuration Used

In this practical, we used two operating systems and two Python versions.

- Operating systems: Ubuntu and Windows
- Python versions: 3.11 and 3.12

This configuration creates four job combinations.

## 4. Important Workflow Settings

### runs-on

Specifies the operating system runner on which a job executes.

Example:
runs-on: ${{ matrix.os }}

### matrix

Defines the different values used to create job combinations.

Example:
matrix:
  os: [ubuntu-latest, windows-latest]
  python-version: ["3.11", "3.12"]

### fail-fast

Controls whether GitHub Actions cancels other running matrix jobs after a job fails.

In this practical, we used:

fail-fast: false

This allows other matrix jobs to continue if one job fails.

### workflow_dispatch

Allows the workflow to be started manually from the GitHub Actions interface.

## 5. Actions Used

- actions/checkout@v4: Checks out the repository code.
- actions/setup-python@v5: Configures the requested Python version.

## 6. Matrix Job Combinations

1. Ubuntu with Python 3.11
2. Ubuntu with Python 3.12
3. Windows with Python 3.11
4. Windows with Python 3.12

## 7. Test Results

The workflow was manually triggered from GitHub Actions.

All four matrix jobs completed successfully.

Each job displayed the Python version and operating system.

GitHub Actions also showed Node.js deprecation warnings for the actions runtime. These warnings did not prevent the jobs from succeeding.

## 8. Key Learnings

- One job definition can generate multiple job combinations.
- Matrix Strategy helps test software across different environments.
- Each matrix combination runs as a separate job.
- Workflow logs help verify the environment and command output.
- A successful workflow can still display warnings that may need attention later.

## 9. Workflow Source

https://github.com/arunvishwakarma1307-wq/cloud-engineering-journey/blob/main/.github/workflows/day28-matrix-strategy.yml