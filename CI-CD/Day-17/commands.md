
# Day-17 Commands: GitHub Actions Concurrency Control

## 1. Open the Project Directory

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey"
```

Opens the project directory in PowerShell.

## 2. Create the Day-17 Directory

```powershell
New-Item -ItemType Directory -Path "CI-CD\Day-17"
```

Creates the Day-17 folder. Run this only if it does not already exist.

## 3. Create the Screenshots Directory

```powershell
New-Item -ItemType Directory -Path "CI-CD\Day-17\Screenshots"
```

Creates the folder for Day-17 screenshots. Run this only if it does not already exist.

## 4. Create the Workflow File

```powershell
New-Item -ItemType File -Path ".github\workflows\day17-concurrency.yml"
```

Creates the workflow file. Run this only if it does not already exist.

## 5. Check Git Status

```powershell
git status
```

Displays changed, staged, and untracked files.

## 6. Stage the Workflow File

```powershell
git add .github/workflows/day17-concurrency.yml
```

Stages the workflow file for committing.

## 7. Commit the Workflow

```powershell
git commit -m "Complete Day-17 GitHub Actions concurrency control"
```

Saves the staged workflow changes in Git history.

## 8. Push Changes to GitHub

```powershell
git push
```

Uploads committed changes to the remote repository.

## 9. Run the Workflow on GitHub

1. Open the repository on GitHub.
2. Select the **Actions** tab.
3. Open **Day-17 Concurrency Control Demo**.
4. Click **Run workflow**.
5. Select the `main` branch.
6. Click **Run workflow** again to confirm.

## 10. Test Concurrency Cancellation

1. Start a workflow run.
2. Open the run and check the `Simulate a running task` step.
3. While that task is still running, return to the workflow page.
4. Start another run using the same branch.
5. Check whether the older in-progress run is cancelled.
6. Verify that the newer run completes successfully.

## 11. Save Screenshots

Save screenshots in:

`CI-CD/Day-17/Screenshots/`

- `01-concurrency-workflow-success.png`
- `02-concurrency-run-cancelled.png`
- `03-latest-run-success.png`

## 12. Stage Day-17 Documentation and Screenshots

After saving the README, notes, commands, and all screenshots:

```powershell
git add CI-CD/Day-17
git status
```

Check that the expected files appear under `Changes to be committed`.

## 13. Commit Day-17 Documentation

```powershell
git commit -m "Add Day-17 concurrency control documentation"
```

Saves the Day-17 documentation and screenshots in Git history.

## 14. Push Documentation to GitHub

```powershell
git push
```

Uploads the documentation and screenshots to GitHub.

## 15. Verify the Final Repository Status

```powershell
git status
```

Confirm that the working tree is clean and the branch is up to date with `origin/main`.

## Important Note

The workflow demonstrates cancellation behavior only. It does not deploy an application or modify a production environment.
