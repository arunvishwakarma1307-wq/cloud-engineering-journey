# Day 38 - Kubernetes Jobs and CronJobs

## Job

A Kubernetes Job creates one or more Pods and ensures that a specified task runs successfully and completes.

Jobs are useful for tasks that need to run once and finish.

---

## Job Completion

A Job is considered successful when its required Pod completes successfully.

Example:

```text
Job
 ↓
Pod
 ↓
Task executes
 ↓
Pod Completed
 ↓
Job Complete
```

In this practical, the Job completed with:

```text
COMPLETIONS: 1/1
```

---

## Job Pod

A Job creates a Pod to perform the assigned task.

The Pod used the:

```text
busybox:1.36
```

image and executed the configured command.

---

## Job Logs

Job execution can be checked using Pod logs.

The output was:

```text
Kubernetes Job started
Task completed successfully
```

---

## CronJob

A CronJob creates Jobs according to a defined schedule.

Example:

```text
CronJob
   ↓
Scheduled Job
   ↓
Pod
   ↓
Task executes
   ↓
Completed
```

---

## CronJob Schedule

The CronJob used the schedule:

```text
*/2 * * * *
```

This runs the CronJob every two minutes.

---

## CronJob Generated Job

When the scheduled time arrives, the CronJob creates a Job.

The Job then creates a Pod to execute the task.

---

## CronJob Execution

The generated Pod executed:

```text
CronJob executed successfully
```

and reached the:

```text
Completed
```

status.

---

## Job vs CronJob

| Feature    | Job                   | CronJob                      |
| ---------- | --------------------- | ---------------------------- |
| Execution  | Runs a task           | Runs Jobs on a schedule      |
| Scheduling | No recurring schedule | Uses cron schedule           |
| Completion | Task completes        | Each generated Job completes |
| Use case   | One-time task         | Scheduled/recurring task     |

---

## Important Observations

- A Job is designed for a task that should eventually complete.
- A completed Job does not continuously create new Pods.
- A CronJob is different because it creates Jobs according to its schedule.
- The CronJob schedule `*/2 * * * *` runs every two minutes.
- The Job and CronJob Pods can be checked separately using `kubectl get jobs` and `kubectl get pods`.
- Logs are useful for confirming that the task actually executed successfully.
