# Day-28 Commands: GitHub Actions Matrix Strategy

## 1. Navigate to Project Directory

cd "$HOME\Desktop\cloud engineering journey"

## 2. Create Day-28 Screenshots Folder

New-Item -ItemType Directory -Force -Path "CI-CD\Day-28\Screenshots"

## 3. Open the Workflow File

notepad ".github\workflows\day28-matrix-strategy.yml"

## 4. Verify the Workflow File

Test-Path ".github\workflows\day28-matrix-strategy.yml"

## 5. Check Git Status

git status

## 6. Stage the Workflow File

git add ".github/workflows/day28-matrix-strategy.yml"

## 7. Commit the Workflow

git commit -m "Add Day 28 GitHub Actions matrix strategy"

## 8. Push to GitHub

git push origin main

## 9. Test Through GitHub Actions

1. Open the GitHub repository.
2. Go to Actions.
3. Select Day-28 GitHub Actions Matrix Strategy.
4. Click Run workflow on the main branch.
5. Verify all four matrix jobs.

## 10. Test Results

All four matrix combinations completed successfully:

- Ubuntu with Python 3.11
- Ubuntu with Python 3.12
- Windows with Python 3.11
- Windows with Python 3.12