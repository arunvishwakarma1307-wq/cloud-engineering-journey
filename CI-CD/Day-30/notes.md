
# Day-30 Notes: GitHub Actions — Pin Actions to Commit SHAs

## 1. What Is Action Pinning?
Action pinning means referencing a GitHub Action at a specific commit SHA instead of using a version tag.

## 2. What Is a Commit SHA?
A commit SHA is a unique identifier for a specific Git commit. Using the full SHA fixes the action reference to that particular revision.

## 3. Example from Day-30

```yaml
- name: Checkout repository
  uses: actions/checkout@11bd71901bbe5b1630ceea73d27597364c9af683
```

In this example, `actions/checkout` is pinned to a specific commit SHA.

## 4. Version Tag vs Commit SHA

- Version tag example: `actions/checkout@v4`
- Commit SHA example: `actions/checkout@11bd71901bbe5b1630ceea73d27597364c9af683`

A version tag can be moved to another commit, while a full commit SHA identifies a specific revision.

## 5. Benefits of Pinning

- Makes the action revision explicit.
- Helps keep workflow dependencies consistent.
- Reduces risks associated with a version tag changing unexpectedly.
- Supports better supply-chain security practices.

## 6. Important Security Practice

Always verify the full commit SHA against the official action repository and check that it belongs to the intended release. Pinning alone does not guarantee that an action is safe.

## 7. Workflow Triggers

- `workflow_dispatch` allows manual execution.
- `push.paths` runs the workflow when matching files are changed.

## 8. Practical Result

The Day-30 workflow was manually triggered and completed successfully.

- Repository checkout: Successful
- Workflow information step: Successful
- Overall result: Success

GitHub displayed a Node.js 20 deprecation warning for the pinned checkout action. The warning did not fail the workflow.

## 9. Key Takeaway

Using a verified full commit SHA is one way to make GitHub Actions dependencies more predictable and improve workflow security.
