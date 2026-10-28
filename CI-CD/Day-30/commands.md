
# Day-30 Commands: GitHub Actions — Pin Actions to Commit SHAs

## 1. Navigate to the Project Folder

```powershell
cd "$HOME\Desktop\cloud engineering journey"
```

## 2. Create the Day-30 Folder and Screenshots Directory

```powershell
New-Item -ItemType Directory -Force -Path "CI-CD\Day-30\Screenshots"
```

## 3. Create the Workflow File

```powershell
notepad ".github\workflows\day30-pinned-actions.yml"
```

Paste the workflow YAML code into Notepad, then press `Ctrl + S` to save it.

## 4. Check Git Status

```powershell
git status
```

## 5. Stage the Workflow File

```powershell
git add ".github/workflows/day30-pinned-actions.yml"
```

## 6. Commit the Workflow File

```powershell
git commit -m "Add Day 30 pinned GitHub Actions workflow"
```

## 7. Push Changes to GitHub

```powershell
git push
```

## 8. Run the Workflow

1. Open the GitHub repository.
2. Go to the **Actions** tab.
3. Select **Day-30 GitHub Actions Pinned Dependencies**.
4. Click **Run workflow**.
5. Select the `main` branch and run it.
6. Verify that the `Verify Pinned Actions` job succeeds.

## 9. Save Screenshots

Save the workflow logs as:

`CI-CD\Day-30\Screenshots\01-day30-pinned-actions-logs.png`

Save the workflow success summary as:

`CI-CD\Day-30\Screenshots\02-day30-workflow-success.png`

## 10. Important Note

The workflow uses a full commit SHA to pin `actions/checkout`. Verify action SHAs against the official repository before using them in production workflows.

This workflow is a learning demonstration; it checks out the repository and prints workflow information.
