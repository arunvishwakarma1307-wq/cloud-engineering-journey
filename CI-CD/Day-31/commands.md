
# Day-31 Commands: GitHub Actions Environments

## 1. Navigate to the Project Folder

```powershell
cd "$HOME\Desktop\cloud engineering journey"
```

## 2. Create the Day-31 Folder and Screenshots Directory

```powershell
New-Item -ItemType Directory -Force -Path "CI-CD\Day-31\Screenshots"
```

## 3. Create the Workflow File

```powershell
notepad ".github\workflows\day31-environments.yml"
```

Paste the workflow YAML into Notepad and press `Ctrl + S` to save it.

## 4. Verify the Workflow File

```powershell
Test-Path ".github\workflows\day31-environments.yml"
```

Expected output: `True`

## 5. Check Git Status

```powershell
git status
```

## 6. Stage the Workflow File

```powershell
git add ".github/workflows/day31-environments.yml"
```

## 7. Commit the Workflow File

```powershell
git commit -m "Add Day 31 GitHub Actions environments workflow"
```

## 8. Push Changes to GitHub

```powershell
git push
```

## 9. Run and Verify the Workflow

1. Open the GitHub repository.
2. Go to the **Actions** tab.
3. Select **Day-31 GitHub Actions Environments**.
4. Click **Run workflow** and select `main`.
5. Wait for Development Environment to succeed.
6. Open **Review deployments** when Production shows **Waiting for review**.
7. Approve the production deployment.
8. Verify that both jobs finish successfully.

## 10. Screenshot Names

Save the screenshot taken before production approval as:

`CI-CD\Day-31\Screenshots\01-day31-production-awaiting-approval.png`

Save the screenshot taken after approval as:

`CI-CD\Day-31\Screenshots\02-day31-production-approved-success.png`

## Important Note

This workflow demonstrates environments and approval behavior using `echo` commands. It does not deploy an actual application.
