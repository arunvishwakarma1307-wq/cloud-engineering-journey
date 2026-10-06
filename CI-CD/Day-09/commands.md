# Day-09 — Commands

## 1. Go to the Cloud Engineering repository

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey"
```

Used to work inside the correct Cloud Engineering repository.

## 2. Create the Day-09 directory

```powershell
New-Item -ItemType Directory ".\CI-CD\Day-09"
```

Used to create the Day-09 project directory.

## 3. Go to the Day-09 directory

```powershell
cd ".\CI-CD\Day-09"
```

Used to work inside the Day-09 directory.

## 4. Open the GitHub Actions workflow

```powershell
notepad "..\..\.github\workflows\ci.yml"
```

Used to edit the existing GitHub Actions workflow.

## 5. Verify the workflow

```powershell
Get-Content "..\..\.github\workflows\ci.yml"
```

Used to verify the updated workflow configuration.

## 6. Go to the repository root

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey"
```

Used to return to the Git repository root.

## 7. Stage the workflow change

```powershell
git add ".github\workflows\ci.yml"
```

Used to stage the Day-09 workflow modification.

## 8. Check Git status

```powershell
git status
```

Used to verify that the workflow modification was staged.

## 9. Commit the Day-09 workflow

```powershell
git commit -m "Add Day-09 conditional deploy job"
```

Used to commit the Day-09 conditional deploy job.

## 10. Push changes to GitHub

```powershell
git push
```

Used to push the Day-09 workflow changes to GitHub.

## Screenshot References

- `Screenshots/01-workflow-jobs-success.png` — Successful build, test, and deploy jobs.
- `Screenshots/02-conditional-deploy-success.png` — Successful conditional deploy output.