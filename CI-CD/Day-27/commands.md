# Day-27 Commands: Smart CI/CD Change Detection

## 1. Navigate to Project Directory

cd "$HOME\Desktop\cloud engineering journey"

## 2. Check Git Status

git status

## 3. Create Day-27 Screenshots Folder

New-Item -ItemType Directory -Force -Path "CI-CD\Day-27\Screenshots"

## 4. Open the GitHub Actions Workflow File

notepad ".github\workflows\day27-change-detection.yml"

## 5. Verify the Workflow File Exists

Test-Path ".github\workflows\day27-change-detection.yml"

Expected output: True

## 6. Check Repository Folders

Get-ChildItem -Directory

## 7. Stage the Workflow File

git add ".github/workflows/day27-change-detection.yml"

## 8. Commit the Workflow

git commit -m "Add Day 27 smart CI-CD change detection"

## 9. Push Changes to GitHub

git push origin main

## 10. GitHub Actions Manual Test

1. Open the repository on GitHub.
2. Go to Actions.
3. Select Day-27 Smart CI-CD Change Detection.
4. Click Run workflow.
5. Open the completed workflow run and check the job results.