# Day-07 — GitHub Actions Environment Variables

## GitHub Actions Environment Variables

Environment variables are values that can be defined and used during GitHub Actions workflow execution.

They are useful for storing configuration values that may be needed by workflow jobs or steps.

## `env`

GitHub Actions uses the `env` keyword to define environment variables.

An environment variable can be defined at different levels, such as:

- Workflow level
- Job level
- Step level

The level at which the variable is defined determines where it is available.

## Workflow-Level Environment Variable

A workflow-level environment variable is available throughout the workflow.

For example:

```yaml
env:
  DAY7_ENV: "cloud-engineering-day-07"
```

This makes `DAY7_ENV` available to the workflow.

## Using Environment Variables

An environment variable can be accessed inside a shell command using its variable name.

For example:

```bash
echo "$DAY7_ENV"
```

The value stored in the environment variable is then available to the command.

## Variable Scope

Scope means where an environment variable can be accessed.

A workflow-level variable can be used by the jobs and steps within that workflow.

A job-level variable is available to steps belonging to that job.

A step-level variable is available only to that specific step.

## Environment Variables and Workflow Execution

Environment variables allow workflow configuration values to be passed to commands during workflow execution.

They help keep workflow configuration organized and make values reusable across relevant parts of a workflow.

## Day-07 Concept

The main concept of Day-07 is understanding how a GitHub Actions workflow can define an environment variable and make that value available during workflow execution.

The practical example used the variable:

```text
DAY7_ENV
```

with the value:

```text
cloud-engineering-day-07
```

## Key Understanding

- `env` is used to define environment variables.
- Workflow-level variables can be available across the workflow.
- Environment variables can be accessed by workflow commands.
- Scope determines where a variable can be used.
- Environment variables are useful for workflow configuration.

## Final Understanding

GitHub Actions environment variables provide a simple way to define values that workflow jobs and steps can use during execution.

Understanding `env` and variable scope is important for building more configurable and maintainable CI/CD workflows.