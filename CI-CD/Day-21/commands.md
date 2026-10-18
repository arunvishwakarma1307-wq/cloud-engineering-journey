
# Day-21 Commands: Pull Request CI Check

## 1. Create a New Branch
```powershell
git switch -c day21-pull-request
```
**Purpose:** Creates and switches to the Day-21 working branch.

## 2. Check Repository Status
```powershell
git status
```
**Purpose:** Shows the current branch and modified, staged, or untracked files.

## 3. Stage the Workflow File
```powershell
git add ".github/workflows/day21-pull-request-check.yml"
```
**Purpose:** Stages the workflow file for committing.

## 4. Commit the Workflow
```powershell
git commit -m "Add Day-21 pull request CI check"
```
**Purpose:** Saves the staged workflow changes in Git history.

## 5. Push the Branch to GitHub
```powershell
git push --set-upstream origin day21-pull-request
```
**Purpose:** Uploads the branch and sets its upstream tracking branch.

For later commits on the same branch:
```powershell
git push
```

## 6. Switch Back to Main
```powershell
git switch main
```
**Purpose:** Switches the local repository to the `main` branch.

## 7. Update Main from GitHub
```powershell
git pull origin main
```
**Purpose:** Downloads and integrates the latest changes from the remote `main` branch.

## 8. Find Day-21 Files Tracked by Git
```powershell
git ls-files "*day21*"
```
**Purpose:** Lists Git-tracked files whose paths contain `day21`.

## 9. Read the Workflow File
```powershell
Get-Content ".github\workflows\day21-pull-request-check.yml"
```
**Purpose:** Displays the workflow YAML in PowerShell. Run this after confirming the file exists on the current branch.

## 10. Create the Day-21 Documentation Folder
```powershell
New-Item -ItemType Directory -Path "CI-CD\Day-21" -Force
```
**Purpose:** Creates the documentation folder if it does not already exist.

## 11. Create the Screenshots Folder
```powershell
New-Item -ItemType Directory -Path "CI-CD\Day-21\Screenshots" -Force
```
**Purpose:** Creates the folder for Day-21 evidence screenshots.

## Important Notes
- GitHub Actions runs the workflow automatically for matching Pull Request events.
- The Day-21 workflow checks actual repository file paths.
- Review the Pull Request checks before merging.
- Commands for creating folders are included for reference; they do not need to be rerun if the folders already exist.
