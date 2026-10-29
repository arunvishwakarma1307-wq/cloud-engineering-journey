
# Day-31 Notes: GitHub Actions Environments

## 1. What Is a GitHub Actions Environment?

An environment is a named deployment target used by a workflow, such as `development`, `testing`, or `production`.

## 2. Why Use Environments?

- Separate development and production workflows.
- Apply environment-specific protection rules.
- Require approval before a protected deployment continues.
- Manage environment-specific configuration and secrets.

## 3. Development Environment

```yaml id="j1m9yq"
development:
  name: Development Environment
  runs-on: ubuntu-latest
  environment: development
```

The `environment: development` setting associates this job with the GitHub environment named `development`.

## 4. Production Environment

```yaml id="2t1ks8"
production:
  name: Production Environment
  runs-on: ubuntu-latest
  needs: development
  environment: production
```

The Production job waits for Development to succeed because of `needs: development`.

## 5. Production Approval

During the practical, the Development job succeeded first. The Production job then showed **Waiting for review**.

After the production review was approved, the Production job continued and succeeded.

A configured environment protection rule can require approval before a job proceeds. Approval behavior depends on the environment's settings and repository plan.

## 6. Workflow Triggers

- `workflow_dispatch`: allows manual workflow execution.
- `push.paths`: runs the workflow when matching files change.

## 7. Permissions

```yaml id="e8z2wf"
permissions:
  contents: read
```

This gives the workflow read-only access to repository contents through the associated token.

## 8. Important Difference: Environment vs Job Dependency

- `environment` associates a job with a named deployment environment and its configured rules.
- `needs` defines the job dependency and execution order.
- These settings solve different problems and can be used together.

## 9. Practical Result

- Development Environment: Success
- Production before approval: Waiting for review
- Production after approval: Success
- Overall workflow: Success

The jobs used demonstration `echo` commands; no actual application was deployed.

## 10. Key Takeaway

GitHub Actions environments help organize deployment stages. When protection rules are configured, they can add a review gate before a production job continues.
