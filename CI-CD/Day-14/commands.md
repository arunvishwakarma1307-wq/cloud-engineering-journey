# Day-14: Reusable Workflows — Commands

## 1. Go to Project Root

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey"
```

## 2. Create Day-14 Folder

```powershell
New-Item -ItemType Directory -Path "CI-CD\Day-14"
```

## 3. Go to Day-14 Folder

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey\CI-CD\Day-14"
```

## 4. Create Reusable Workflow File

```powershell
notepad "..\..\.github\workflows\reusable-build.yml"
```

## 5. Create Main Workflow File

```powershell
notepad "..\..\.github\workflows\day14-main.yml"
```

## 6. Verify Workflow Files

```powershell
Get-ChildItem "..\..\.github\workflows"
```

```powershell
Get-Content "..\..\.github\workflows\reusable-build.yml"
Get-Content "..\..\.github\workflows\day14-main.yml"
```

## 7. Check Git Status

```powershell
git status
```

## 8. Stage Workflow Files

Run from the project root:

```powershell
git add ".github/workflows/day14-main.yml" ".github/workflows/reusable-build.yml"
```

## 9. Commit Changes

```powershell
git commit -m "Add Day-14 reusable GitHub Actions workflow"
```

## 10. Push Changes

```powershell
git push
```

## 11. GitHub Actions Test

1. Open the GitHub repository.
2. Open the **Actions** tab.
3. Select **Day-14 Reusable Workflow Demo**.
4. Open the workflow run triggered by the push.
5. Verify that the overall status is **Success**.
6. Open the `reusable-build` job.
7. Expand **Show reusable workflow message**.
8. Verify the log displays `Reusable workflow executed successfully!`.

## Screenshots

- `Screenshots/01-reusable-workflow-success.png`
- `Screenshots/02-reusable-workflow-logs.png`