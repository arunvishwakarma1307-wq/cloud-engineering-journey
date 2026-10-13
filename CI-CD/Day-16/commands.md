
# Day-16 Commands: GitHub Actions Matrix Strategy

## 1. Open the Project Directory

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey"
```

Opens the Cloud Engineering Journey project directory.

## 2. Create the Day-16 Directory

```powershell
New-Item -ItemType Directory -Path "CI-CD\Day-16"
```

Creates the Day-16 folder. Run this only if the folder does not already exist.

## 3. Create the Screenshots Directory

```powershell
New-Item -ItemType Directory -Path "CI-CD\Day-16\Screenshots"
```

Creates the folder for Day-16 screenshots. Run this only if it does not already exist.

## 4. Create the Workflow File

```powershell
New-Item -ItemType File -Path ".github\workflows\day16-matrix.yml"
```

Creates the workflow file. Run this only if the file does not already exist.

## 5. Check Git Status

```powershell
git status
```

Displays modified, staged, and untracked files.

## 6. Stage the Workflow File

```powershell
git add .github/workflows/day16-matrix.yml
```

Stages the workflow file for committing.

## 7. Commit the Workflow

```powershell
git commit -m "Complete Day-16 GitHub Actions matrix strategy"
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
3. Open **Day-16 Matrix Strategy Demo**.
4. Click **Run workflow**.
5. Select the `main` branch.
6. Click **Run workflow** again.
7. Open the workflow run and verify all three matrix jobs.

## 10. Verify the Matrix Jobs

Check these jobs:
- `Test on development`
- `Test on staging`
- `Test on production`

Open each job and verify that it displays the correct environment name and the success message.

## 11. Save Screenshots

Save the screenshots in:

`CI-CD/Day-16/Screenshots/`

- `01-matrix-workflow-success.png`
- `02-staging-job-success.png`
- `03-production-job-success.png`

## 12. Commit Day-16 Documentation and Screenshots

After creating the documentation and saving all screenshots:

```powershell
git add CI-CD/Day-16
git status
git commit -m "Add Day-16 matrix strategy documentation"
git push
```

These commands stage, verify, commit, and push the Day-16 documentation and screenshots.

## Important Note

The matrix workflow is a demonstration. It tests three environment labels and does not perform an actual application deployment.