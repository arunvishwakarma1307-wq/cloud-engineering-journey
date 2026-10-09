# Day-12: GitHub Actions Job Timeout — Notes

## 1. What Is a Job Timeout?

A job timeout is a time limit that controls how long a GitHub Actions job is allowed to run.

If a job exceeds its configured time limit, GitHub Actions cancels the job.

## 2. What Is `timeout-minutes`?

`timeout-minutes` is a GitHub Actions job property used to set the maximum execution time of a job in minutes.

Example:

````yaml
timeout-minutes: 5
````

This sets the job's timeout limit to five minutes.

## 3. Why Are Job Timeouts Important?

Job timeouts help to:

- Prevent jobs from running for too long.
- Stop stuck or unresponsive tasks.
- Reduce unnecessary runner usage.
- Make CI/CD workflows more predictable.
- Identify tasks that are taking longer than expected.

## 4. Job-Level Timeout

A job-level timeout applies to the entire job, including its steps.

For example, if a job has a five-minute timeout, the job cannot continue indefinitely just because one of its steps is still running.

The timeout applies to that job only. Other independent jobs may continue running.

## 5. What Happens When a Timeout Occurs?

When a job reaches its configured timeout:

1. GitHub Actions cancels the job.
2. The currently running operation is interrupted.
3. The job is marked as cancelled or timed out, depending on how the cancellation is reported.
4. The logs can be inspected to understand what happened.

A timeout is different from a normal successful completion because the job did not finish its intended work.

## 6. Difference Between Job Timeout and Step Failure

| Job Timeout | Step Failure |
|---|---|
| The job exceeds its allowed execution time. | A step returns an error or a non-zero exit code. |
| GitHub Actions cancels the job. | The step fails and normally causes the job to fail. |
| Used to control execution duration. | Used to identify an unsuccessful operation. |

A step can also fail for reasons unrelated to time limits, such as an invalid command or a missing file.

## 7. Job Timeout vs. `continue-on-error`

- `timeout-minutes` limits how long a job can run.
- `continue-on-error` allows a workflow to continue after a configured step or job failure.

These properties solve different problems. `continue-on-error` does not replace a timeout.

## 8. Important Points

- `timeout-minutes` is measured in minutes.
- It can be configured separately for different jobs.
- Each job can have its own timeout value.
- A timeout does not guarantee that every command finishes its work.
- Runner startup and cleanup can affect the total elapsed time shown in the job summary.
- A cancelled job does not mean the entire workflow's other jobs must also be cancelled.
- Always inspect the job logs to understand the actual result.

## 9. Conclusion

GitHub Actions job timeouts help control execution time and prevent jobs from running indefinitely. They are useful for reliable CI/CD pipelines, especially when jobs depend on external services or potentially long-running operations.