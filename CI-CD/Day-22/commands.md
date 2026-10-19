
# Day-22 Commands: GitHub Actions Concurrency Control

## 1. Open Project Directory

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey"
```

## 2. Create Day-22 Folders

```powershell
New-Item -ItemType Directory -Force -Path "CI-CD\Day-22\Screenshots"
```

## 3. Create Workflow File

```powershell
New-Item -ItemType File -Path ".github\workflows\day22-concurrency-control.yml" -Force
```

## 4. View Workflow File

```powershell
Get-Content ".github\workflows\day22-concurrency-control.yml"
```

## 5. Check Git Status

```powershell
git status
```

## 6. Stage Workflow File

```powershell
git add ".github/workflows/day22-concurrency-control.yml"
```

## 7. Commit Workflow File

```powershell
git commit -m "Add Day-22 concurrency control workflow"
```

## 8. Push Changes to GitHub

```powershell
git push origin main
```

## 9. Check Git Status Again

```powershell
git status
```

## 10. Verify Tracked Day-22 Files

```powershell
git ls-files "CI-CD/Day-22"
```

## 11. Run the Workflow Manually

1. Open the GitHub repository.
2. Select the **Actions** tab.
3. Open **Day-22 Concurrency Control**.
4. Click **Run workflow**.
5. Select the `main` branch and click **Run workflow** again.

## 12. Test Concurrency Cancellation

1. Start a workflow run manually.
2. While its task is running, trigger another run for the same branch.
3. Check the workflow run list.
4. Open the run marked **Cancelled**.
5. Read the cancellation annotation to verify the result.

## 13. Screenshot Files

Save the screenshots in `CI-CD/Day-22/Screenshots/`.

- `01-workflow-success.png`
- `02-concurrency-settings.png`
- `03-concurrency-cancellation.png`

## Important Notes

- `git add` stages files for a commit.
- `git commit` saves staged changes in local Git history.
- `git push origin main` uploads committed changes to GitHub.
- `cancel-in-progress: true` allows an older in-progress run in the same concurrency group to be cancelled when a newer run takes priority.
- The workflow's `sleep 30` command simulates a task running for 30 seconds.
