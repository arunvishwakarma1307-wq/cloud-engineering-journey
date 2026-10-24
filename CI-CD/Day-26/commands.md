# Day-26 Commands: Dependency Caching

## 1. Check Root Requirements File

    Test-Path "requirements.txt"

Purpose: Checked whether requirements.txt existed in the repository root. Output was False.

## 2. Create Day-26 Requirements File

    Set-Content -Path "CI-CD\Day-26\requirements.txt" -Value "requests==2.32.3"

Purpose: Created the Day-26 requirements file with Requests version 2.32.3.

## 3. Verify Workflow and Requirements Files

    Test-Path ".github\workflows\day26-dependency-cache.yml"
    Test-Path "CI-CD\Day-26\requirements.txt"

Purpose: Verified that both files existed. Both commands returned True.

## 4. Check Git Status

    git status

Purpose: Checked the repository status before staging the new files.

## 5. Stage Day-26 Files

    git add ".github/workflows/day26-dependency-cache.yml" "CI-CD/Day-26/"

Purpose: Staged the Day-26 workflow and folder files.

## 6. Commit Changes

    git commit -m "Add Day 26 dependency caching workflow"

Purpose: Committed the workflow and requirements file.

## 7. Push to GitHub

    git push

Purpose: Pushed the commit to the main branch on GitHub.

## 8. GitHub Actions Verification

The Day-26 workflow ran successfully and displayed the Requests version as 2.32.3.

The captured log showed "pip cache is not found". A cache hit has not yet been confirmed.