
# Day-22 Notes: GitHub Actions Concurrency Control

## 1. What Is Concurrency?

Concurrency in GitHub Actions controls how multiple workflow runs execute when they belong to the same concurrency group.

It helps prevent unnecessary overlapping workflow runs.

## 2. Concurrency Configuration

```yaml
concurrency:
  group: day22-${{ github.ref }}
  cancel-in-progress: true
```

### `group`
- Defines which workflow runs belong to the same group.
- `${{ github.ref }}` identifies the Git reference, such as `refs/heads/main`.
- The `day22-` prefix keeps this group separate from other concurrency groups.

### `cancel-in-progress`
- When set to `true`, a newer run can cancel an older in-progress run in the same group.
- This helps avoid wasting time and resources on outdated runs.

## 3. Workflow Triggers

The workflow runs when:
- A commit is pushed to the `main` branch.
- The workflow is manually triggered using `workflow_dispatch`.

## 4. Practical Demonstration

The workflow contains a simulated task:

```bash
echo "Task is running..."
sleep 30
echo "Task completed."
```

The `sleep 30` command keeps the task running temporarily so that overlapping workflow runs can be tested.

## 5. Test Result

- The workflow completed successfully during the initial test.
- A later run was marked **Cancelled**.
- GitHub Actions displayed an annotation stating that a higher-priority waiting request existed for the same concurrency group.

This demonstrated concurrency cancellation behavior.

## 6. Important Points

- Concurrency groups control competing workflow runs.
- Runs with the same group value compete with each other.
- `cancel-in-progress: true` enables cancellation of an older in-progress run when a newer run takes priority.
- A cancelled run is not the same as a failed workflow.
- A successful initial run alone does not prove that cancellation works; the cancellation result must also be verified.
- Concurrency does not guarantee that every older run will always be cancelled immediately; queued runs and GitHub Actions scheduling can affect the result.

## 7. Commands and Concepts Learned

- `workflow_dispatch`
- `concurrency`
- `group`
- `cancel-in-progress`
- `github.ref`
- `sleep 30`

## 8. Conclusion

I learned how GitHub Actions concurrency groups work, configured automatic cancellation for overlapping runs, and observed the cancellation behavior in the workflow run details.
