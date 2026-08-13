# Day 38 - Kubernetes Jobs and CronJobs

## Objective

* Understand Kubernetes Job.
* Understand how a Job runs a task and completes it successfully.
* Understand Kubernetes CronJob.
* Understand how CronJob creates Jobs according to a schedule.
* Verify Job and CronJob execution.

---

## Practical Implementation

### 1. Create Kubernetes Job

Created a Kubernetes Job named:

```text
demo-job
```

The Job used the `busybox:1.36` image and executed a simple task.

The Job printed:

```text
Kubernetes Job started
Task completed successfully
```

---

### 2. Verify Job Completion

Checked the Job status, Pod status, and Job logs.

The Job completed successfully with:

```text
COMPLETIONS: 1/1
STATUS: Complete
```

The Job Pod reached:

```text
Completed
```

**Screenshot:** `01-job-completed.png`

---

### 3. Create Kubernetes CronJob

Created a CronJob named:

```text
demo-cronjob
```

The CronJob was configured with the schedule:

```text
*/2 * * * *
```

This schedules the CronJob to run every two minutes.

---

### 4. Verify CronJob and Generated Job

Verified the CronJob and checked the Jobs created by the CronJob.

The CronJob successfully generated a Job and its corresponding Pod.

**Screenshot:** `02-cronjob-created.png`

**Screenshot:** `03-cronjob-job-created.png`

---

### 5. Verify CronJob Execution

Checked the generated CronJob Pod logs.

The execution returned:

```text
CronJob executed successfully
```

The CronJob Pod reached:

```text
Completed
```

**Screenshot:** `04-cronjob-execution.png`

---

## Outcome

Successfully created and verified a Kubernetes Job and CronJob.

The Job executed its task and completed successfully. The CronJob was configured with a scheduled execution, generated a Job and Pod, and successfully executed the scheduled task.

---

## What I Learned

* Kubernetes Job
* Job Pod
* Job completion
* Job logs
* Kubernetes CronJob
* Cron scheduling
* CronJob generated Jobs
* CronJob generated Pods
* Scheduled task execution
