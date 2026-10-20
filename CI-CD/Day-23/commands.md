# Day-23 Commands: GitHub Actions workflow_run

## 1. Navigate to Project Directory

    cd "$HOME\Desktop\cloud engineering journey"

## 2. Create Workflow Files and Folders

    New-Item -ItemType Directory -Force ".github\workflows"
    New-Item -ItemType Directory -Force "CI-CD\Day-23\Screenshots"
    New-Item -ItemType File -Path ".github\workflows\day23-source.yml"
    New-Item -ItemType File -Path ".github\workflows\day23-workflow-run.yml"

## 3. Open Workflow Files

    notepad ".github\workflows\day23-source.yml"
    notepad ".github\workflows\day23-workflow-run.yml"

## 4. View Workflow Files

    Get-Content ".github\workflows\day23-source.yml"
    Get-Content ".github\workflows\day23-workflow-run.yml"

## 5. Check Python Version

    python --version

## 6. Check PyYAML Availability

    python -c "import yaml; print('PyYAML available')"

## 7. Validate Both YAML Files

    python -c "import yaml; files=['.github/workflows/day23-source.yml','.github/workflows/day23-workflow-run.yml']; [(print(f'Checking: {f}'), yaml.safe_load(open(f, encoding='utf-8'))) for f in files]; print('YAML syntax validation passed.')"

## 8. Check Git Status

    git status --short

## 9. Stage Workflow Files

    git add ".github/workflows/day23-source.yml" ".github/workflows/day23-workflow-run.yml"

## 10. Commit Workflow Files

    git commit -m "Add Day-23 workflow_run event demo"

## 11. Push to GitHub

    git push

## 12. Verify Git Status

    git status

## 13. Run the Source Workflow

1. Open the GitHub repository.
2. Go to the Actions tab.
3. Select Day-23 Source Workflow.
4. Click Run workflow.
5. Select the main branch.
6. Click Run workflow again.

## 14. Verify the Listener Workflow

1. Open the Actions tab.
2. Select Day-23 Workflow Run Listener.
3. Open the latest run.
4. Verify that the workflow completed successfully.
5. Check the logs for:
   - Source result: success
   - Day-23 follow-up workflow triggered after success.

## 15. Screenshot Files

Save screenshots in:

    CI-CD/Day-23/Screenshots/

Screenshot names:

    01-source-workflow-success.png
    02-workflow-run-listener-success.png

## 16. Documentation Files

    CI-CD/Day-23/README.md
    CI-CD/Day-23/notes.md
    CI-CD/Day-23/commands.md

## Summary

Day-23 demonstrated how to trigger a follow-up GitHub Actions workflow using the workflow_run event.

Both workflows were validated locally, pushed to GitHub, and tested successfully.