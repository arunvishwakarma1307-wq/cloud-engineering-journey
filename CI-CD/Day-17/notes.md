
# Day-17 Notes: GitHub Actions Concurrency Control

## 1. What Is Concurrency?

Concurrency in GitHub Actions controls how multiple workflow runs or jobs execute when they belong to the same concurrency group.

It helps manage overlapping runs and avoid unnecessary work.

## 2. Why Is Concurrency Useful?

Concurrency is useful when:
- Developers push code multiple times.
- New workflow runs make older runs unnecessary.
- CI resources should not be wasted on outdated runs.
- Only the latest in-progress work should continue.

## 3. Concurrency Group

A concurrency group identifies workflow runs or jobs that should be managed together.

Runs with the same group name are subject to the same concurrency rules.

For example, a group can be created using the current Git reference so that runs for the same branch are grouped together.

## 4. Important Keywords

### `concurrency`

Defines concurrency control for a workflow or job.

### `group`

Specifies the name used to group related workflow runs or jobs.

### `cancel-in-progress`

Controls whether an existing in-progress run or job in the same group can be cancelled when a new run or job starts.

When set to `true`, a new run can cancel an older in-progress run in the same group.

## 5. How Concurrency Works

When a new workflow run starts in a concurrency group:
- GitHub Actions checks for another run in the same group.
- An older in-progress run can be cancelled if `cancel-in-progress` is enabled.
- The newer run can then proceed.

Concurrency is a control mechanism, not a guarantee that every older run will always be cancelled in every situation.

## 6. Benefits of Concurrency

- Reduces unnecessary CI work.
- Helps prioritize newer workflow runs.
- Controls overlapping executions.
- Can save runner time and resources.
- Keeps workflow execution more manageable.

## 7. Important Points

- Concurrency group names determine which runs are managed together.
- Different groups can run independently.
- Cancellation can stop an in-progress run before all its steps finish.
- Concurrency does not automatically deploy an application.
- The correct concurrency configuration depends on the workflow's purpose.

## 8. Key Takeaway

GitHub Actions concurrency helps manage overlapping workflow runs. With a suitable concurrency group and `cancel-in-progress: true`, newer work can replace older in-progress work in the same group.
