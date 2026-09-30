# Day 04 - Commands

## 1. Move to Repository Root

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey"
```

**Basic Explanation:**  
Moves to the Cloud Engineering Journey Git repository.

---

## 2. Create Day-04 Directory

```powershell
New-Item -ItemType Directory ".\CI-CD\Day-04"
```

**Basic Explanation:**  
Creates the Day-04 folder inside the CI-CD directory.

---

## 3. Verify Git Status

```powershell
git status
```

**Basic Explanation:**  
Shows modified, staged, and untracked files in the repository.

---

## 4. Verify GitHub Actions Workflow

```powershell
Get-Content ".\.github\workflows\ci.yml"
```

**Basic Explanation:**  
Displays the GitHub Actions workflow file to verify its contents.

---

## 5. Stage the Workflow

```powershell
git add ".github/workflows/ci.yml"
```

**Basic Explanation:**  
Stages the modified GitHub Actions workflow for the next commit.

---

## 6. Commit the Workflow

```powershell
git commit -m "Add Day-04 GitHub Actions secrets workflow"
```

**Basic Explanation:**  
Creates a Git commit containing the Day-04 GitHub Actions secrets workflow.

---

## 7. Push Changes to GitHub

```powershell
git push
```

**Basic Explanation:**  
Uploads the committed Day-04 workflow changes to the GitHub repository.

---

## 8. Configure Repository Secret

**GitHub UI:**  
Repository → Settings → Secrets and variables → Actions → Repository secrets

Secret name:

```text
DAY4_TEST_SECRET
```

**Basic Explanation:**  
Creates a repository-level secret that can be securely accessed by GitHub Actions.

**Screenshot:**  
`Screenshots/01-secret-configured.png`

---

## 9. Use Repository Secret in GitHub Actions

```yaml
env:
  DAY4_SECRET: ${{ secrets.DAY4_TEST_SECRET }}
```

**Basic Explanation:**  
Makes the repository secret available to the workflow step through an environment variable.

---

## 10. Check Secret Availability

```bash
if [ -n "$DAY4_SECRET" ]; then
  echo "Repository secret is available."
else
  echo "Repository secret is not available."
  exit 1
fi
```

**Basic Explanation:**  
Checks whether the secret environment variable contains a value without displaying the actual secret.

**Screenshot:**  
`Screenshots/02-secret-check-success.png`


**Screenshot:**  
`Screenshots/01-secret-configured.png`
`Screenshots/02-secret-check-success.png`