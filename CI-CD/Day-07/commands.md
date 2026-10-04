# Day-07 — Commands

## 1. Go to Repository Root

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey"
```

## 2. Create Day-07 Directory

```powershell
New-Item -ItemType Directory ".\CI-CD\Day-07"
```

## 3. Enter Day-07 Directory

```powershell
cd ".\CI-CD\Day-07"
```

## 4. Check Existing GitHub Actions Workflow

```powershell
Get-Content "..\..\.github\workflows\ci.yml"
```

## 5. Open GitHub Actions Workflow

```powershell
notepad "..\..\.github\workflows\ci.yml"
```

The workflow was updated to add the Day-07 environment variable and use it in the Build stage.

## 6. Verify Updated Workflow

```powershell
Get-Content "..\..\.github\workflows\ci.yml"
```

The output confirmed:

```yaml
env:
  DAY7_ENV: "cloud-engineering-day-07"
```

and:

```bash
echo "Environment: $DAY7_ENV"
```

## 7. Check Git Status

```powershell
git status
```

The workflow file was shown as modified.

## 8. Stage the Workflow

```powershell
git add "..\..\.github\workflows\ci.yml"
```

## 9. Commit the Day-07 Workflow

```powershell
git commit -m "Add Day-07 environment variable"
```

## 10. Push Day-07 Workflow

```powershell
git push
```

## 11. Screenshot Reference

### GitHub Actions Environment Variable Success

The screenshot shows the successful workflow execution and the environment variable value displayed during the Build stage.

**Screenshot:**

`Screenshots/01-environment-variable-success.png`

## Screenshot Files

- `01-environment-variable-success.png`