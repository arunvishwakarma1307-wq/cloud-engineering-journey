
# Day-19 Commands: GitHub Actions Artifacts

## 1. Open the Project Folder

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey"
```

## 2. Create the Day-19 Folders

```powershell
New-Item -ItemType Directory -Force -Path "CI-CD\Day-19\Screenshots"
```

## 3. Create or Open the Workflow File

```powershell
notepad ".github\workflows\day19-artifacts.yml"
```

## 4. Check Git Status

```powershell
git status
```

## 5. Stage the Workflow File

```powershell
git add .github/workflows/day19-artifacts.yml
```

## 6. Commit the Workflow

```powershell
git commit -m "Add Day-19 GitHub Actions artifacts workflow"
```

## 7. Push the Workflow to GitHub

```powershell
git push
```

## 8. Run the Workflow

1. Open the GitHub repository.
2. Click the Actions tab.
3. Select Day-19 Artifacts Demo.
4. Click Run workflow.
5. Select the `main` branch.
6. Click Run workflow again.
7. Open the completed workflow run.

## 9. Verify the Artifact

1. Check that all workflow steps succeed.
2. Confirm that `day19-report` is uploaded.
3. Open the workflow run summary.
4. Download the `day19-report` artifact.
5. Open the downloaded ZIP file.
6. Verify the contents of `report.txt`.

Expected report content:

```text
Day-19 GitHub Actions Artifacts Demo
Workflow completed successfully.
Artifact generated for learning purposes.
```

## 10. Save the Screenshots

Folder:

```text
CI-CD\Day-19\Screenshots\
```

Screenshot filenames:

```text
01-artifact-upload-success.png
02-artifact-download-verified.png
```

## 11. Stage Day-19 Documentation

After saving the README, notes, commands, and both screenshots, run:

```powershell
git add CI-CD/Day-19
git status
```

Review the staged file list before committing.

## 12. Commit and Push Documentation

```powershell
git commit -m "Complete Day-19 artifacts documentation"
git push
```

## 13. Verify the Repository

```powershell
git status
```

Expected result after successful commit and push:

```text
On branch main
Your branch is up to date with 'origin/main'.

nothing to commit, working tree clean
```
