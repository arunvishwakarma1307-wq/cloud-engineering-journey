# Day 02 - Commands

## 1. Go to CI/CD Day-02 Directory

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey\CI-CD\Day-02"
```

---

## 2. Check Current CI/CD Folders

```powershell
Get-ChildItem ".\CI-CD"
```

**Basic Explanation:**  
Shows the folders inside the CI-CD directory.

---

## 3. Create Day-02 Directory

```powershell
New-Item -ItemType Directory ".\CI-CD\Day-02"
```

**Basic Explanation:**  
Creates the Day-02 practical directory.

---

## 4. Go to Repository Root

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey"
```

---

## 5. Read the Existing GitHub Actions Workflow

```powershell
Get-Content ".github\workflows\ci.yml"
```

**Basic Explanation:**  
Displays the current GitHub Actions workflow file.

---

## 6. Open GitHub Actions Workflow

```powershell
notepad ".github\workflows\ci.yml"
```

**Basic Explanation:**  
Opens the workflow file so its configuration can be edited.

---

## 7. Verify Job Dependency

```powershell
Select-String -Path ".github\workflows\ci.yml" -Pattern "needs: build"
```

**Basic Explanation:**  
Checks whether the workflow contains the `needs: build` dependency.

---

## 8. Check Git Status

```powershell
git status
```

**Basic Explanation:**  
Shows modified, staged, and untracked files in the repository.

---

## 9. Stage the Workflow

```powershell
git add ".github\workflows\ci.yml"
```

**Basic Explanation:**  
Stages the modified GitHub Actions workflow for commit.

---

## 10. Commit the Multiple-Jobs Workflow

```powershell
git commit -m "Add CI-CD Day-02 job dependency workflow"
```

---

## 11. Push the Workflow to GitHub

```powershell
git push
```

**Basic Explanation:**  
Uploads the workflow changes to GitHub and triggers the GitHub Actions pipeline.

**Screenshot:** `01-multiple-jobs-success.png`

---

## 12. Open Workflow for Dependency Failure Test

```powershell
notepad ".github\workflows\ci.yml"
```

**Basic Explanation:**  
Opens the workflow to temporarily add an intentional Build failure.

---

## 13. Stage the Failure Test

```powershell
git add ".github\workflows\ci.yml"
```

---

## 14. Commit the Dependency Failure Test

```powershell
git commit -m "Test CI job dependency failure"
```

**Basic Explanation:**  
Creates a commit containing the intentional Build failure used to test the job dependency.

---

## 15. Push the Dependency Failure Test

```powershell
git push
```

**Basic Explanation:**  
Uploads the intentional failure workflow to GitHub and triggers the failure test.

**Screenshots:**
- `02-build-failure-test-skipped.png`
- `03-build-failure-logs.png`

---

## 16. Open Workflow to Restore Success

```powershell
notepad ".github\workflows\ci.yml"
```

**Basic Explanation:**  
Opens the workflow to remove the intentional failure and restore normal execution.

---

## 17. Check Final Workflow

```powershell
Get-Content ".github\workflows\ci.yml"
```

**Basic Explanation:**  
Displays the final workflow configuration before committing the restored pipeline.

---

## 18. Check Repository Status

```powershell
git status
```

---

## 19. Stage the Restored Workflow

```powershell
git add ".github\workflows\ci.yml"
```

---

## 20. Commit the Restored Workflow

```powershell
git commit -m "Restore CI pipeline success"
```

---

## 21. Push the Final Successful Workflow

```powershell
git push
```

**Basic Explanation:**  
Uploads the restored successful workflow and triggers the final CI pipeline run.

**Screenshot:** `04-final-multiple-jobs-success.png`

---

## Main Command Used

```powershell
git status
git add ".github\workflows\ci.yml"
git commit -m "Add CI-CD Day-02 job dependency workflow"
git push
git commit -m "Test CI job dependency failure"
git push
git commit -m "Restore CI pipeline success"
git push
```

## Screenshot Files

```text
01-multiple-jobs-success.png
02-build-failure-test-skipped.png
03-build-failure-logs.png
04-final-multiple-jobs-success.png
```