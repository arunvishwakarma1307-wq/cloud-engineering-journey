
# Day-24 Commands: GitHub Actions Workflow Inputs

## 1. Navigate to the Project Directory

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey"
```

## 2. Create the Day-24 Directory

```powershell
New-Item -ItemType Directory -Force "CI-CD\Day-24"
```

## 3. Create the Workflow File

```powershell
New-Item -ItemType Directory -Force ".github\workflows" | Out-Null
New-Item -ItemType File -Force ".github\workflows\day24-workflow-inputs.yml"
```

## 4. Validate YAML Syntax

```powershell
python -c "import yaml; yaml.safe_load(open('.github/workflows/day24-workflow-inputs.yml', encoding='utf-8')); print('YAML syntax check passed')"
```

Expected output:

```text
YAML syntax check passed
```

Note: This checks YAML syntax. GitHub Actions-specific validation is confirmed by running the workflow on GitHub.

## 5. Check Git Status

```powershell
git status --short
```

## 6. Stage the Workflow File

```powershell
git add ".github/workflows/day24-workflow-inputs.yml"
```

## 7. Commit the Workflow

```powershell
git commit -m "Add Day-24 GitHub Actions workflow inputs"
```

## 8. Push to GitHub

```powershell
git push
```

## 9. Create the Screenshots Directory

```powershell
New-Item -ItemType Directory -Force "CI-CD\Day-24\Screenshots" | Out-Null
```

## 10. Open Documentation Files

```powershell
notepad "CI-CD\Day-24\README.md"
notepad "CI-CD\Day-24\notes.md"
notepad "CI-CD\Day-24\commands.md"
```

## 11. Run the Workflow on GitHub

1. Open the repository's **Actions** tab.
2. Select **Day-24 Workflow Inputs**.
3. Click **Run workflow**.
4. Select `staging` and enter `Day-24 manual input test`.
5. Run the workflow and verify the logs.
6. Repeat with `production` and `Day-24 production input test`.
7. Confirm both runs succeed and display their respective inputs.

## 12. Screenshot File Names

```text
CI-CD\Day-24\Screenshots\01-staging-input-test-success.png
CI-CD\Day-24\Screenshots\02-production-input-test-success.png
```

## Important Note

The workflow demonstrates manual input handling only. It does not perform a real deployment.

## Status

Workflow pushed and both input tests completed successfully.
