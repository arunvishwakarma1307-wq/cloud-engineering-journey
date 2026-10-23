# Day-25: GitHub Actions Job Outputs — Complete Commands

## 1. Open the Project Folder

cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey"

## 2. Create the Day-25 Folder Structure

New-Item -ItemType Directory -Force -Path "CI-CD\Day-25\Screenshots"

## 3. Create the Workflow File

New-Item -ItemType File -Force -Path ".github\workflows\day25-job-outputs.yml"

## 4. Workflow File Location

.github/workflows/day25-job-outputs.yml

The workflow file was edited and saved with the following content:

name: Day-25 Job Outputs

on:
  workflow_dispatch:

permissions:
  contents: read

jobs:
  generate-output:
    runs-on: ubuntu-latest

    outputs:
      app_environment: ${{ steps.set-output.outputs.environment_name }}

    steps:
      - name: Generate job output
        id: set-output
        run: echo "environment_name=staging" >> "$GITHUB_OUTPUT"

      - name: Display generated value
        env:
          GENERATED_ENVIRONMENT: ${{ steps.set-output.outputs.environment_name }}
        run: echo "Generated environment is $GENERATED_ENVIRONMENT"

  consume-output:
    runs-on: ubuntu-latest
    needs: generate-output

    steps:
      - name: Read output from previous job
        env:
          APP_ENVIRONMENT: ${{ needs.generate-output.outputs.app_environment }}
        run: |
          echo "Output received from previous job."
          echo "Application environment is $APP_ENVIRONMENT"

## 5. Validate Workflow YAML

python -c "import yaml; yaml.safe_load(open('.github/workflows/day25-job-outputs.yml', encoding='utf-8')); print('YAML syntax check passed')"

Expected result:
YAML syntax check passed

## 6. Check Git Status

git status --short

## 7. Stage the Workflow File

git add ".github/workflows/day25-job-outputs.yml"

## 8. Verify Staged File

git status --short

Expected staged status:
A  .github/workflows/day25-job-outputs.yml

## 9. Commit the Workflow

git commit -m "Add Day-25 GitHub Actions job outputs"

## 10. Push to GitHub

git push

## 11. Run the GitHub Actions Workflow

1. Open the Cloud Engineering Journey GitHub repository.
2. Click the Actions tab.
3. Select Day-25 Job Outputs.
4. Click Run workflow.
5. Select the main branch.
6. Click Run workflow again.
7. Wait for the workflow to finish.

## 12. Verify the First Job

Open generate-output.

Open the Display generated value step.

Expected output:
Generated environment is staging

Save the screenshot as:
01-generate-output-success.png

## 13. Verify the Second Job

Open consume-output.

Open the Read output from previous job step.

Expected output:
Output received from previous job.
Application environment is staging

Save the screenshot as:
03-consume-output-success.png

## 14. Save the Workflow Overview Screenshot

Take a screenshot of the successful workflow run showing both jobs.

Save it as:
01-workflow-run-overview.png

Note:
Use unique screenshot filenames. If the overview screenshot uses 01, rename the first job screenshot to 02-generate-output-success.png so the names remain distinct.

## 15. Screenshot Folder

CI-CD\Day-25\Screenshots\

Expected screenshots:
01-workflow-run-overview.png
02-generate-output-success.png
03-consume-output-success.png

## 16. Documentation Files

CI-CD\Day-25\README.md
CI-CD\Day-25\notes.md
CI-CD\Day-25\commands.md

## 17. Final Result

Both GitHub Actions jobs completed successfully. The generate-output job created the staging value, and the consume-output job received and displayed it.

This practical demonstrates sharing outputs between jobs. It does not deploy an actual application.