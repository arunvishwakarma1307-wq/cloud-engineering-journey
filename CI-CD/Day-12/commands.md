# Day-12: GitHub Actions Timeout — Commands

## 1. Navigate to the Main Repository

````powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey"
````

Moves PowerShell to the main project repository.

## 2. Create the Day-12 Folder

````powershell
New-Item -ItemType Directory -Path "CI-CD\Day-12"
````

Creates the Day-12 directory for documentation and screenshots. This command was used when setting up the folder.

## 3. Navigate to the Day-12 Directory

````powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey\CI-CD\Day-12"
````

Moves PowerShell into the Day-12 directory.

## 4. Open the GitHub Actions Workflow

````powershell
notepad "..\..\.github\workflows\ci.yml"
````

Opens the existing workflow file in Notepad so the timeout configuration can be edited.

## 5. Check Git Status

````powershell
git status
````

Displays the current branch and indicates whether files are modified, staged, or committed.

## 6. Stage the Workflow File

````powershell
git add "..\..\.github\workflows\ci.yml"
````

Stages the workflow file for the next commit.

## 7. Commit the Timeout Test Changes

````powershell
git commit -m "Add Day-12 timeout test"
````

Creates a Git commit for the timeout test workflow changes.

## 8. Push Changes to GitHub

````powershell
git push
````

Uploads the committed changes to the remote GitHub repository and triggers the configured workflow.

## 9. Timeout Test Command

The following Bash commands were configured inside the GitHub Actions workflow:

````bash
echo "Day-12 timeout test started."
echo "Job timeout is set to 1 minute."
echo "This command will run for 2 minutes."
sleep 120
echo "This line should not be reached."
````

- `echo` displays messages in the workflow logs.
- `sleep 120` waits for 120 seconds.
- The one-minute job timeout cancels the job before the two-minute sleep finishes.

## Screenshots

1. `Screenshots/01-timeout-minutes-configured.png` — Build job timeout configuration.
2. `Screenshots/02-build-job-success.png` — Successful build job.
3. `Screenshots/03-timeout-test-result.png` — Timeout test cancellation and logs.

## Final Result

Configured `timeout-minutes` for the build job and verified timeout behavior using a separate test job. The timeout test was cancelled before the two-minute command could complete.