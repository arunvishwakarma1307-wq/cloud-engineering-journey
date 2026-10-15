
# Day-18 Commands: GitHub Actions Conditional Execution

## 1. Open the Project Folder

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey"
```

## 2. Create Day-18 Documentation Folders

```powershell
New-Item -ItemType Directory -Force -Path "CI-CD\Day-18\Screenshots"
```

## 3. Open the Workflow File

```powershell
notepad ".github\workflows\day18-conditional-execution.yml"
```

## 4. Check Git Status

```powershell
git status
```

## 5. Stage the Workflow File

```powershell
git add .github/workflows/day18-conditional-execution.yml
```

## 6. Commit the Workflow

```powershell
git commit -m "Add Day-18 conditional execution workflow"
```

## 7. Push to GitHub

```powershell
git push
```

## 8. Test the Workflow

1. Open the GitHub repository.
2. Click the **Actions** tab.
3. Select **Day-18 Conditional Execution Demo**.
4. Click **Run workflow**.
5. Select the `main` branch.
6. Click **Run workflow** again.
7. Open the workflow run and inspect the `conditional-demo` job.

## 9. Expected Results

- Step 1: Success
- Step 2: Success
- Step 3: Skipped because the condition is false
- Step 4: Success

## 10. Save Screenshots

Save the two screenshots in:

```text
CI-CD\Day-18\Screenshots\
```

Screenshot names:

```text
01-conditional-workflow-success.png
02-condition-true-success.png
```

## 11. Stage Day-18 Documentation

After saving and checking all Day-18 files, run:

```powershell
git add CI-CD/Day-18
git status
```

Review the staged file list before committing.

## 12. Commit and Push Day-18 Documentation

```powershell
git commit -m "Complete Day-18 conditional execution documentation"
git push
```

## 13. Verify the Repository

```powershell
git status
```

Expected result after a successful commit and push:

```text
On branch main
Your branch is up to date with 'origin/main'.

nothing to commit, working tree clean
```
