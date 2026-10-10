# Day-13: GitHub Actions Manual Workflow Trigger — Notes

## 1. What Is a Workflow Trigger?

A workflow trigger is an event that tells GitHub Actions when to start a workflow.

Common triggers include:
- `push` — runs when changes are pushed to a repository.
- `pull_request` — runs when a pull request event occurs.
- `workflow_dispatch` — allows a user to start a workflow manually.

## 2. What Is `workflow_dispatch`?

`workflow_dispatch` is a GitHub Actions event that enables manual workflow execution.

It allows a user to start a workflow from the GitHub Actions interface without needing to create a new push or pull request for that run.

## 3. Why Is Manual Execution Useful?

Manual execution is useful when:
- You want to test a workflow on demand.
- You want to rerun a process without making a new code change.
- You need to perform a controlled deployment or maintenance task.
- You want to verify a workflow after updating its configuration.

## 4. How Does It Work?

1. The workflow configuration includes the `workflow_dispatch` event.
2. The workflow file is committed and pushed to GitHub.
3. The user opens the repository's Actions tab.
4. The user selects the workflow and clicks **Run workflow**.
5. The user selects the branch and confirms the run.
6. GitHub Actions starts the workflow and displays its execution status and logs.

## 5. Manual Trigger vs. Automatic Trigger

| Feature | Manual Trigger | Automatic Trigger |
|---|---|---|
| Event | `workflow_dispatch` | `push` or `pull_request` |
| How it starts | User starts it from GitHub Actions | A configured repository event occurs |
| New push required for each run | No | Depends on the configured event |
| Main use | On-demand execution | Automated CI/CD processes |

## 6. Workflow Status and Job Status

A workflow contains one or more jobs. Each job has its own status, such as success, failure, or cancellation.

A workflow can be marked as failed even if some jobs succeed. For example, an intentionally failing job or a timed-out job can make the overall workflow fail.

Therefore, individual job results should be checked instead of relying only on the overall workflow status.

## 7. Important Points

- `workflow_dispatch` enables manual workflow execution.
- The workflow must be available on GitHub for the manual trigger to be used.
- Manual triggering does not automatically make a workflow successful; the jobs must still execute correctly.
- Manual, push, and pull request triggers can coexist in the same workflow.
- Workflow logs help identify which jobs succeeded, failed, or were cancelled.

## 8. Summary

`workflow_dispatch` gives users control over when a GitHub Actions workflow runs. It is useful for on-demand testing, maintenance, and controlled execution without requiring a new push or pull request for every run.