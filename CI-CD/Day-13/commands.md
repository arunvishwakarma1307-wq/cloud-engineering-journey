# Day-13: GitHub Actions Manual Workflow Trigger — Commands

## 1. Navigate to the Main Repository

````powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey"
````

Moves PowerShell to the Cloud Engineering Journey repository.

## 2. Create the Day-13 Folder

````powershell
New-Item -ItemType Directory -Path "CI-CD\Day-13"
````

Creates the folder for Day-13 documentation and screenshots.

## 3. Navigate to the Day-13 Folder

````powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey\CI-CD\Day-13"
````

Moves PowerShell into the Day-13 directory.

## 4. Open the GitHub Actions Workflow

````powershell
notepad "..\..\.github\workflows\ci.yml"
````

Opens the existing workflow file in Notepad to add the `workflow_dispatch` trigger.

## 5. Check Git Status

````powershell
git status
````

Checks which files have been modified, staged, or committed.

## 6. Stage the Workflow File

````powershell
git add "..\..\.github\workflows\ci.yml"
````

Stages the modified workflow file for committing.

## 7. Commit the Workflow Changes

````powershell
git commit -m "Add Day-13 manual workflow trigger"
````

Creates a Git commit for the manual workflow trigger change.

## 8. Push Changes to GitHub

````powershell
git push
````

Pushes the committed changes to the remote repository.

## 9. Manual Workflow Trigger Configuration

The following YAML configuration was added to `.github/workflows/ci.yml`:

````yaml
on:
  workflow_dispatch:
  push:
    branches:
      - main
  pull_request:
    branches:
      - main
````

- `workflow_dispatch` enables manual workflow execution.
- `push` triggers the workflow when changes are pushed to `main`.
- `pull_request` triggers the workflow for pull request events targeting `main`.

## 10. Manual Test Performed

The manual test was performed through the GitHub website:

1. Open the repository's Actions tab.
2. Select the CI Pipeline workflow.
3. Click Run workflow.
4. Select the `main` branch.
5. Confirm the run.
6. Verify `Manually triggered` and `workflow_dispatch` in the run details.

No terminal command was needed to start the manual run.

## Screenshots

1. `Screenshots/01-manual-workflow-run.png` — Manual trigger verification.
2. `Screenshots/02-build-job-success.png` — Build job success and logs.

## Final Result

Enabled and verified manual execution of the GitHub Actions workflow using `workflow_dispatch`.