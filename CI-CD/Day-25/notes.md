# Day-25: GitHub Actions Job Outputs — Notes

## 1. What Are Job Outputs?
Job outputs allow one job to share a value with another job in a GitHub Actions workflow.

## 2. GITHUB_OUTPUT
`GITHUB_OUTPUT` is used to save a step output that other steps or jobs can access.

Example:

    echo "environment_name=staging" >> "$GITHUB_OUTPUT"

Here, `environment_name` is the output name and `staging` is its value.

## 3. Step ID
A step ID identifies a step so its outputs can be referenced later.

Example:

    id: set-output

The output can be accessed using:

    steps.set-output.outputs.environment_name

## 4. Job Outputs
The `outputs` keyword exposes a step's output at the job level.

Example:

    outputs:
      app_environment: ${{ steps.set-output.outputs.environment_name }}

This makes the value available to another job.

## 5. The needs Keyword
The `needs` keyword defines a dependency between jobs. It makes the current job wait for the required job to finish successfully.

Example:

    needs: generate-output

To read the output from that job:

    needs.generate-output.outputs.app_environment

## 6. Practical Workflow
1. The `generate-output` job creates the value `staging`.
2. The job exposes that value through its output.
3. The `consume-output` job waits for `generate-output`.
4. The second job reads and displays the received value.

## 7. Important Points
- Step outputs and job outputs are different.
- A step output is exposed at job level using `outputs`.
- The receiving job uses `needs` to access the previous job's output.
- Job dependencies help control the execution order.
- This workflow demonstrates output sharing; it does not deploy an application.

## 8. Result
Both jobs completed successfully, and the `staging` value was passed from `generate-output` to `consume-output`. 