# Day 12 - Jenkins Pipeline Timeout and Retry

## 1. What is Retry?

Retry is a Jenkins Pipeline feature that automatically runs a block of code again when an error occurs.

It is useful when a task fails temporarily due to network issues or other temporary problems.

Example:

    retry(3) {
        echo 'Executing task...'
    }

Here:
- `retry(3)` allows a maximum of 3 attempts.
- If an attempt fails, Jenkins tries again.
- If an attempt succeeds, Jenkins continues to the next step.
- If all attempts fail, the pipeline fails.

## 2. What is Timeout?

Timeout is a Jenkins Pipeline feature that limits how long a task can run.

If the specified time expires, Jenkins interrupts the task.

Example:

    timeout(time: 1, unit: 'MINUTES') {
        echo 'Executing task...'
        sleep(time: 5, unit: 'SECONDS')
    }

Here:
- `time: 1` defines the time limit.
- `unit: 'MINUTES'` specifies minutes.
- The task must complete within the configured time.

## 3. How Retry Works

1. Jenkins starts the task.
2. The first attempt fails.
3. Jenkins automatically retries the task.
4. The second attempt fails.
5. Jenkins performs the third attempt.
6. If the third attempt succeeds, execution continues.

In Day 12, the first two attempts were intentionally failed using the `error()` step. The third attempt succeeded.

## 4. How Timeout Works

1. Jenkins starts the timeout block.
2. The configured timer begins.
3. The task executes.
4. If the task completes within the time limit, execution continues.
5. If the time limit expires, Jenkins interrupts the task.

## 5. Retry vs Timeout

| Feature | Retry | Timeout |
|---|---|---|
| Purpose | Repeat failed tasks | Limit execution time |
| Main step | `retry()` | `timeout()` |
| Usage | Temporary failures | Long-running tasks |
| Result | Attempts task again | Interrupts task after time limit |

## 6. Real-World Use Cases

| Feature | Example |
|---|---|
| Retry | Retry a temporary network request |
| Retry | Retry downloading a dependency |
| Timeout | Limit an API request duration |
| Timeout | Prevent a deployment task from running indefinitely |

## 7. Important Points

- Retry automatically attempts a failed block again.
- The retry count includes the initial attempt.
- Timeout sets a maximum execution duration.
- Timeout and Retry can be used together.
- Both features help make CI/CD pipelines more reliable.
- A timeout interruption can cause the pipeline to fail unless handled.

## 8. Day 12 Practical Learning

In this practical, I learned:

- What Jenkins Retry is.
- How to use the `retry()` step.
- How Jenkins handles temporary failures.
- What Jenkins Timeout is.
- How to use the `timeout()` step.
- How to verify Retry and Timeout execution through Console Output.

## Conclusion

Jenkins Retry and Timeout features help manage failures and execution time in CI/CD pipelines.

Retry handles temporary failures by repeating tasks, while Timeout prevents tasks from running longer than the configured limit.