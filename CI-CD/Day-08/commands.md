# Day-08 — Commands

## 1. Go to the CI/CD Day-08 directory

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey\CI-CD\Day-08"
```

Used to work inside the Day-08 folder.

## 2. Check the workflow file

```powershell
Get-Content "..\..\.github\workflows\ci.yml"
```

Used to view the current GitHub Actions workflow.

## 3. Open the workflow file

```powershell
notepad "..\..\.github\workflows\ci.yml"
```

Used to edit the GitHub Actions workflow.

## 4. Stage the workflow change

```powershell
git add "..\..\.github\workflows\ci.yml"
```

Used because the workflow file is located outside the Day-08 folder.

## 5. Check Git status

```powershell
git status
```

Used to verify that the workflow modification was staged.

## 6. Commit the Day-08 change

```powershell
git commit -m "Add Day-08 environment scope check"
```

Used to create a Git commit for the Day-08 environment scope verification.

## 7. Push changes to GitHub

```powershell
git push
```

Used to upload the committed Day-08 workflow change to the remote GitHub repository.

## Screenshot References

- `Screenshots/01-step-level-environment.png` — Step-level environment value verification.
- `Screenshots/02-job-level-environment.png` — Job-level environment value verification.