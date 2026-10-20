# Day-23 Notes: GitHub Actions workflow_run

## 1. What is workflow_run?

The `workflow_run` event allows one GitHub Actions workflow to start after another workflow completes.

Example:
- Workflow A runs a task.
- Workflow A completes.
- Workflow B starts automatically.

## 2. What is workflow_dispatch?

The `workflow_dispatch` event allows us to start a workflow manually from the GitHub Actions tab.

In this practical, we used it to start the source workflow.

## 3. How workflow_run Works

Our listener workflow uses:

    on:
      workflow_run:
        workflows:
          - Day-23 Source Workflow
        types:
          - completed

Meaning:
- `workflows`: Specifies the source workflow name.
- `types: completed`: Triggers after the source workflow completes.
- The source workflow can complete with success, failure, or cancellation.

## 4. Checking the Source Workflow Result

We used:

    ${{ github.event.workflow_run.conclusion }}

This provides the conclusion of the source workflow, such as:
- `success`
- `failure`
- `cancelled`

We also used:

    ${{ github.event.workflow_run.id }}

This provides the source workflow run ID.

## 5. Conditional Execution

To run a step only when the source workflow succeeds:

    if: ${{ github.event.workflow_run.conclusion == 'success' }}

To handle any result other than success:

    if: ${{ github.event.workflow_run.conclusion != 'success' }}

## 6. Practical Verification

Verified results:
- Both YAML files passed local YAML parsing.
- The source workflow ran successfully on GitHub.
- The listener workflow triggered automatically.
- The listener workflow completed successfully.
- Logs displayed `Source result: success`.
- The success confirmation step ran.
- The unsuccessful-result step was skipped.

## 7. Important Difference

`workflow_dispatch`:
Starts a workflow manually.

`workflow_run`:
Starts a workflow after another specified workflow completes.

## 8. Real-World Uses

- Run a report after tests complete.
- Notify a team after a build finishes.
- Start a follow-up task after another workflow.
- Perform additional checks after CI completes.

## 9. Security Note

A workflow triggered by `workflow_run` may have access to secrets and write permissions depending on its configuration. Be careful when processing untrusted pull request code or artifacts.

## 10. Summary

Today I learned how to connect two separate GitHub Actions workflows using the `workflow_run` event and check the source workflow result using conditional steps.