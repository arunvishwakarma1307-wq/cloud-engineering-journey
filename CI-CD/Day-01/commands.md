# Day 01 - Commands

## 1. Go to Repository Root

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey"
```

**Basic Explanation:** Moves to the Git repository root directory.

---

## 2. Verify Git Repository Root

```powershell
git rev-parse --show-toplevel
```

**Basic Explanation:** Displays the root directory of the current Git repository.

---

## 3. Create GitHub Actions Directories

```powershell
New-Item -ItemType Directory ".github"
New-Item -ItemType Directory ".github\workflows"
```

**Basic Explanation:** Creates the directory structure required for GitHub Actions workflow files.

---

## 4. Create CI Workflow File

```powershell
New-Item ".github\workflows\ci.yml" -ItemType File
```

**Basic Explanation:** Creates the GitHub Actions workflow configuration file.

---

## 5. Open CI Workflow File

```powershell
notepad ".github\workflows\ci.yml"
```

**Basic Explanation:** Opens the `ci.yml` workflow file for editing.

---

## 6. Verify Workflow File

```powershell
Get-Content ".github\workflows\ci.yml"
```

**Basic Explanation:** Displays the saved contents of the GitHub Actions workflow file.

---

## 7. Check Git Status

```powershell
git status
```

**Basic Explanation:** Shows the current Git working-tree status and staged or unstaged changes.

---

## 8. Stage Workflow File

```powershell
git add .github
```

**Basic Explanation:** Stages the GitHub Actions workflow files for commit.

---

## 9. Stage Updated Workflow

```powershell
git add .github\workflows\ci.yml
```

**Basic Explanation:** Stages the updated CI workflow after modifying the file.

---

## 10. Commit Basic CI Workflow

```powershell
git commit -m "Add Day-01 GitHub Actions basic CI workflow"
```

**Basic Explanation:** Creates a Git commit containing the CI workflow.

---

## 11. Push Workflow to GitHub

```powershell
git push
```

**Basic Explanation:** Uploads the committed workflow changes to the remote GitHub repository and triggers the GitHub Actions workflow.

**Screenshot:** `01-github-actions-success.png`

---

## 12. Commit Intentional CI Failure Test

```powershell
git commit -m "Test CI failure handling"
```

**Basic Explanation:** Commits the intentionally modified workflow used to test CI failure handling.

---

## 13. Push Intentional Failure

```powershell
git push
```

**Basic Explanation:** Pushes the intentional failure configuration to GitHub so GitHub Actions can execute and report the failed CI run.

**Screenshots:**
- `02-github-actions-failure.png`
- `03-github-actions-failure-logs.png`

---

## 14. Open Workflow for Fix

```powershell
notepad ".github\workflows\ci.yml"
```

**Basic Explanation:** Opens the CI workflow so the intentional failure can be removed.

---

## 15. Stage Fixed Workflow

```powershell
git add .github\workflows\ci.yml
```

**Basic Explanation:** Stages the corrected CI workflow.

---

## 16. Commit CI Fix

```powershell
git commit -m "Fix CI workflow check"
```

**Basic Explanation:** Creates a commit containing the corrected workflow.

---

## 17. Push Fixed Workflow

```powershell
git push
```

**Basic Explanation:** Pushes the corrected workflow to GitHub and triggers another CI run.

**Screenshots:**
- `04-github-actions-fixed-success.png`
- `05-github-actions-fixed-success-logs.png`

---

## Main Commands Used

```powershell
git status
git add .github
git add .github\workflows\ci.yml
git commit -m "Add-Day-01 GitHub Actions basic CI workflow"
git commit -m "Test CI failure handling"
git commit -m "Fix CI workflow check"
git push
```

**Screenshots:**
Screenshot: 01-github-actions-success.png
Screenshot: 02-github-actions-failure.png
Screenshot: 03-github-actions-failure-logs.png
Screenshot: 04-github-actions-fixed-success.png
Screenshot: 05-github-actions-fixed-success-logs.png