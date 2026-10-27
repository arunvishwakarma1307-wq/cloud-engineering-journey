
# Day-29 Commands: GitHub Actions Job Dependencies

## 1. Navigate to Project Folder
```powershell
cd "$HOME\Desktop\cloud engineering journey"
```

## 2. Create Day-29 Folder and Screenshots Directory
```powershell
New-Item -ItemType Directory -Force -Path "CI-CD\Day-29\Screenshots"
```

## 3. Create the Workflow File
```powershell
notepad ".github\workflows\day29-job-dependencies.yml"
```

## 4. Verify the Workflow File Exists
```powershell
Test-Path ".github\workflows\day29-job-dependencies.yml"
```

Expected output:
`True`

## 5. Check Git Status
```powershell
git status
```

## 6. Stage the Workflow File
```powershell
git add ".github/workflows/day29-job-dependencies.yml"
```

## 7. Commit the Workflow
```powershell
git commit -m "Add Day 29 GitHub Actions job dependencies"
```

## 8. Push to GitHub
```powershell
git push origin main
```

## 9. Test the Workflow
1. Open the GitHub repository.
2. Go to the **Actions** tab.
3. Select **Day-29 GitHub Actions Job Dependencies**.
4. Click **Run workflow** and select the `main` branch.
5. Verify that Setup, Build, Test, and Deploy jobs succeed in order.

## Important Note
The workflow uses the `needs` keyword to control job dependencies. The Build, Test, and Deploy steps use echo commands for demonstration; they do not perform a real application build, test, or deployment.
