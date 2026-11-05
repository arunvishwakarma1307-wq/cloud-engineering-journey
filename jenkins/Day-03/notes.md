# Day 03 — Jenkins Upstream and Downstream Jobs

## 1. What is an Upstream Job?

An Upstream Job is a Jenkins job that starts or triggers another job after its build completes.

In our practical, `Day03-Upstream-Job` is the Upstream Job.

It starts the build process and triggers the Downstream Job when its build is successful.

## 2. What is a Downstream Job?

A Downstream Job is a Jenkins job that gets triggered by another job.

In our practical, `Day03-Downstream-Job` is the Downstream Job.

It runs automatically after the successful execution of the Upstream Job.

## 3. How Does the Job Trigger Work?

We configured the Upstream Job to trigger the Downstream Job.

The workflow is:

1. We manually start the Upstream Job.
2. Jenkins executes the Upstream Job.
3. Jenkins checks whether the Upstream build is stable.
4. If the build is successful, Jenkins automatically triggers the Downstream Job.
5. The Downstream Job executes its build steps.
6. We verify the result through Console Output.

## 4. What is a Post-build Action?

A Post-build Action is an action Jenkins performs after the build steps are completed.

In our practical, we used the **Build other projects** option.

This option allows one Jenkins job to trigger another job.

## 5. What Does "Trigger Only If Build Is Stable" Mean?

This option tells Jenkins to trigger the Downstream Job only when the Upstream Job completes successfully.

If the Upstream build fails, the Downstream Job will not be triggered through this configuration.

## 6. Execute Shell vs Execute Windows Batch Command

Jenkins was running inside a Linux-based Docker container.

- **Execute shell:** Runs commands using the Linux shell.
- **Execute Windows batch command:** Runs commands using Windows Command Prompt (`cmd.exe`).

We initially used the Windows batch option, which failed because `cmd.exe` was not available inside the Linux container.

We fixed the issue by switching to **Execute shell**.

## 7. Practical Result

We successfully created two Jenkins Freestyle Jobs:

- `Day03-Upstream-Job`
- `Day03-Downstream-Job`

The Upstream Job successfully triggered the Downstream Job automatically.

Both jobs completed successfully, and their Console Output was verified.

---

**Cloud Engineering Journey — Day 03**