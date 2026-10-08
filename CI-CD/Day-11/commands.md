# CI/CD Day-11 — Commands

## Navigate to CI/CD Directory

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey\CI-CD"
```

Moves to the CI/CD project directory.

## Open Day-11 Directory

```powershell
cd Day-11
```

Moves into the Day-11 directory.

## View Workflow File

```powershell
Get-Content "..\..\.github\workflows\ci.yml"
```

Displays the current GitHub Actions workflow.

## Stage the Workflow

```powershell
git add "..\..\.github\workflows\ci.yml"
```

Stages the updated workflow file for Git.

## Check Git Status

```powershell
git status
```

Shows the current Git working tree and staged changes.

## Commit Day-11 Workflow

```powershell
git commit -m "Fix Day-11 continue-on-error workflow"
```

Creates a Git commit for the corrected Day-11 workflow.

## Push Changes

```powershell
git push
```

Pushes the committed changes to the GitHub repository.

## Day-11 Test

The GitHub Actions workflow was tested from the GitHub Actions page.

The `continue-on-error-demo` job was checked to confirm that the intentionally failing step was followed by the next step successfully.

Screenshot reference:

`Screenshots/01-continue-on-error-success.png`

Workflow summary screenshot:

`Screenshots/02-day-11-workflow-summary.png`