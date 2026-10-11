# Day-14: GitHub Actions Reusable Workflows — Notes

## 1. What Is a Reusable Workflow?

A reusable workflow is a GitHub Actions workflow that can be called by another workflow.

It helps avoid writing the same workflow steps repeatedly.

## 2. Why Do We Use Reusable Workflows?

- Reduce repeated YAML code.
- Reuse common CI/CD tasks.
- Keep workflows organized.
- Make maintenance easier.
- Use the same build or test process in multiple workflows.

## 3. The `workflow_call` Trigger

`workflow_call` allows a workflow to be called by another workflow.

Example:

```yaml
on:
  workflow_call:
```

A workflow containing this trigger can act as a reusable workflow.

## 4. Calling a Reusable Workflow

A calling workflow uses the `jobs` section and the `uses` keyword to call another workflow.

Example:

```yaml
jobs:
  call-reusable-workflow:
    uses: ./.github/workflows/reusable-build.yml
```

The path refers to a reusable workflow in the same repository.

## 5. What Is `workflow_dispatch`?

`workflow_dispatch` allows a workflow to be started manually from the GitHub Actions interface.

It is useful for on-demand testing and tasks that do not need to start automatically after every change.

## 6. Main Workflow vs Reusable Workflow

| Main Workflow | Reusable Workflow |
|---|---|
| Calls another workflow. | Provides reusable jobs. |
| Uses the `uses` keyword to call a workflow. | Uses `workflow_call` to allow workflow calls. |
| Controls when the calling workflow starts. | Runs when called by another workflow. |

## 7. How Workflow Reuse Works

1. A reusable workflow defines the jobs to perform.
2. A main workflow calls it.
3. GitHub Actions runs the reusable workflow's jobs.
4. The execution result and logs are available in GitHub Actions.

## 8. Important Points

- A reusable workflow is different from a composite action.
- Reusable workflows are called at the job level using `jobs.<job_id>.uses`.
- A reusable workflow must be configured to accept workflow calls.
- Local reusable workflows use a path inside the same repository.
- A successful job does not automatically mean every other job in a larger pipeline succeeded.
- Workflow permissions and secrets should be configured carefully when reuse is introduced.

## 9. Day-14 Summary

Today, I learned how reusable workflows work in GitHub Actions, how `workflow_call` enables workflow reuse, and how a main workflow can call a reusable workflow using `uses`.

Reusable workflows help make CI/CD pipelines cleaner, more consistent, and easier to maintain.