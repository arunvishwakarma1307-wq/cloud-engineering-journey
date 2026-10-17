
# Day-20: GitHub Actions Environments and Protected Deployment

## 1. Open the Project Folder

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey"
```

## 2. Check Git Status

```powershell
git status
```

## 3. Verify the Workflow File

```powershell
Get-Content ".github\workflows\day20-protected-deployment.yml"
```

## 4. GitHub Repository Configuration

The following steps were completed on GitHub:

1. Opened the repository and navigated to Settings.
2. Opened Settings > Environments.
3. Created the `development` environment.
4. Created the `production` environment.
5. Enabled Required reviewers for the `production` environment.
6. Selected the GitHub account as a reviewer.
7. Saved the production protection rules.

## 5. Run the Workflow on GitHub

1. Opened the repository's Actions tab.
2. Selected `Day-20 Protected Deployment Demo`.
3. Clicked Run workflow.
4. Selected the `main` branch.
5. Started the workflow manually.

## 6. Verify Development Deployment

The `Deploy to Development` job completed successfully.

The workflow then allowed the production job to proceed to its environment protection check.

## 7. Verify Production Approval

1. The `Deploy to Production` job entered the waiting-for-review state.
2. Clicked Review deployments.
3. Reviewed the pending production deployment.
4. Added an approval comment.
5. Approved the deployment.

## 8. Verify the Final Result

After approval:

- Development job: Success
- Production job: Success
- Overall workflow: Success

The production job waited for approval before continuing.

## 9. Save Day-20 Changes to GitHub

Run these commands from the project root after updating the documentation and screenshots.

```powershell
git add ".github\workflows\day20-protected-deployment.yml" "CI-CD\Day-20"
git status
git commit -m "Complete Day-20 protected deployment demo"
git push
git log -1 --oneline
```

## Important Notes

- The workflow was triggered manually using `workflow_dispatch`.
- The `needs: development` setting makes production wait for development to succeed.
- The production environment uses a required reviewer protection rule.
- Screenshots document the environment settings, pending approval, and successful deployment.
- This is a simulated deployment using `echo` commands. No real application or server was deployed.
