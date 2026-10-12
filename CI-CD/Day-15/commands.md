# Day-15: Reusable Workflows with Inputs — Commands

## 1. Go to Project Root

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey"
```

## 2. Create Day-15 Folder

```powershell
New-Item -ItemType Directory -Path "CI-CD\Day-15"
```

## 3. Go to Day-15 Folder

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey\CI-CD\Day-15"
```

## 4. Create Reusable Workflow File

```powershell
notepad "..\..\.github\workflows\day15-reusable.yml"
```

## 5. Create Main Workflow File

```powershell
notepad "..\..\.github\workflows\day15-main.yml"
```

## 6. Verify Workflow Files

```powershell
Get-Content "..\..\.github\workflows\day15-reusable.yml"
Get-Content "..\..\.github\workflows\day15-main.yml"
```

## 7. Check Git Status

```powershell
git status
```

## 8. Stage Workflow Files

Run from the project root:

```powershell
git add ".github/workflows/day15-main.yml" ".github/workflows/day15-reusable.yml"
```

## 9. Commit Workflow Files

```powershell
git commit -m "Add Day-15 reusable workflow inputs"
```

## 10. Push Workflow Files

```powershell
git push
```

## 11. GitHub Actions Test

1. Open the GitHub repository.
2. Open the **Actions** tab.
3. Select **Day-15 Main Workflow**.
4. Click **Run workflow**.
5. Select the `main` branch and run the workflow.
6. Open the successful workflow run.
7. Open the `Build Application` job.
8. Expand **Display application name**.
9. Verify that the logs contain:

```text
Reusable workflow executed successfully!
Application Name: Cloud Guard
```

## 12. Screenshots

- `Screenshots/01-reusable-workflow-success.png`
- `Screenshots/02-input-value-verified.png`