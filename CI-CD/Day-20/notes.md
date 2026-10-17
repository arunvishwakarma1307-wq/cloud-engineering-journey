
# Day-20 Notes: GitHub Actions Environments

## 1. What Is a GitHub Environment?

A GitHub Environment is a place to configure deployment rules, secrets, and variables for a specific stage, such as development or production.

## 2. Environments Used

- `development`: Used for the development deployment job.
- `production`: Used for the production deployment job.

## 3. What Are Deployment Protection Rules?

Deployment protection rules control when a job can continue using an environment.

In this project, the production environment uses a required reviewer rule. GitHub pauses the production job until the deployment is approved.

## 4. What Is a Required Reviewer?

A required reviewer is a person who must review and approve a deployment before it can continue.

We configured the GitHub account as a required reviewer and tested the approval process.

## 5. What Does `needs: development` Do?

The `needs: development` setting makes the production job wait for the development job to complete successfully.

If the development job fails, the production job will not run normally.

## 6. How Does the Workflow Run?

1. The workflow starts manually using `workflow_dispatch`.
2. The development job runs first.
3. After development succeeds, the production job requests environment approval.
4. GitHub pauses the production job while approval is pending.
5. After approval, the production job runs and completes successfully.

## 7. What Is `workflow_dispatch`?

`workflow_dispatch` allows a workflow to be started manually from the GitHub Actions page.

## 8. What Did I Test?

- Development job completed successfully.
- Production waited for review.
- The deployment was approved.
- Production completed successfully after approval.
- The complete workflow showed Success.

## 9. Important Learning

Production deployments should be protected because changes to production can affect real users and services.

Approval rules help ensure that someone reviews a deployment before it proceeds.

## 10. Project Limitation

This is a learning demonstration. The jobs use `echo` commands to simulate deployment. No real application or server was deployed.
