# Day 03 - GitHub Actions Artifacts

## Commands Used

### 1. Navigate to Repository Root

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey"
```

Basic Explanation: Moves the PowerShell session to the Cloud Engineering Journey repository.

---

### 2. Create Day-03 Directory

```powershell
New-Item -ItemType Directory ".\CI-CD\Day-03"
```

Basic Explanation: Creates the Day-03 directory inside the CI-CD folder.

---

### 3. Open Day-03 README

```powershell
notepad ".\CI-CD\Day-03\README.md"
```

Basic Explanation: Opens the Day-03 README file for documentation.

---

### 4. Open GitHub Actions Workflow

```powershell
notepad ".\.github\workflows\ci.yml"
```

Basic Explanation: Opens the GitHub Actions workflow file for editing.

---

### 5. Verify GitHub Actions Workflow

```powershell
Get-Content ".\.github\workflows\ci.yml"
```

Basic Explanation: Displays the workflow file contents in PowerShell to verify the YAML configuration.

---

### 6. Check Git Repository Status

```powershell
git status
```

Basic Explanation: Shows modified and untracked files in the Git repository.

---

### 7. Stage Workflow and Day-03 Files

```powershell
git add ".github/workflows/ci.yml" ".\CI-CD\Day-03"
```

Basic Explanation: Stages the workflow changes and Day-03 files for Git.

---

### 8. Unstage README

```powershell
git restore --staged ".\CI-CD\Day-03\README.md"
```

Basic Explanation: Removes the README file from the staging area without deleting the file.

---

### 9. Verify Staged Changes

```powershell
git status
```

Basic Explanation: Confirms which files are staged and which files are still untracked.

---

### 10. Commit Artifact Workflow

```powershell
git commit -m "Add Day-03 GitHub Actions artifact workflow"
```

Basic Explanation: Creates a Git commit containing the Day-03 GitHub Actions artifact workflow.

---

### 11. Push Workflow to GitHub

```powershell
git push
```

Basic Explanation: Uploads the committed workflow changes to the remote GitHub repository.

Screenshot: `01-artifact-upload-success.png`

---

### 12. List Day-03 Files and Folders

```powershell
Get-ChildItem ".\CI-CD\Day-03" -Recurse
```

Basic Explanation: Displays the Day-03 directory structure and its files.

Screenshot: `01-artifact-upload-success.png`

---

## Main Git Commands

```powershell
git status
git add .
git commit -m "commit message"
git push
```

These commands are commonly used to check repository changes, stage files, create commits, and push changes to GitHub.