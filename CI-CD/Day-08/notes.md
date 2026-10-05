# Day-08 — GitHub Actions Environment Variable Scope — Notes

## 1. Environment Variables in GitHub Actions

Environment variables are values that can be used by workflow steps during execution.

They can store configuration values that are needed by jobs or steps.

Example:

    env:
      APP_ENV: "production"

A step can access the variable using:

    $APP_ENV

---

## 2. Workflow-Level Environment Variable

A workflow-level environment variable is defined at the top level of the workflow.

Example:

    env:
      APP_ENV: "production"

The variable is available to jobs and steps in that workflow unless a lower-level scope overrides it.

---

## 3. Job-Level Environment Variable

A job-level environment variable is defined inside a specific job.

Example:

    jobs:
      build:
        env:
          APP_ENV: "testing"

The variable is available to the steps inside that job.

It can override a workflow-level variable with the same name.

---

## 4. Step-Level Environment Variable

A step-level environment variable is defined inside an individual step.

Example:

    - name: Build
      env:
        APP_ENV: "development"
      run: |
        echo "$APP_ENV"

The variable is available only to that particular step.

A step-level variable can override a job-level and workflow-level variable with the same name.

---

## 5. Environment Variable Scope

GitHub Actions supports different levels of environment variable scope.

The main scopes used in this practical are:

    Workflow level
          ↓
    Job level
          ↓
    Step level

The more specific scope takes priority when the same variable name is defined at multiple levels.

---

## 6. Override Behavior

If the same variable is defined at multiple levels, the value from the more specific scope is used.

Example:

    Workflow level: day-07
    Job level:      day-08-job
    Step level:     day-08-step

Inside the step that defines the step-level variable:

    Step-level value is used.

Inside another step that does not define a step-level value:

    Job-level value is used.

This demonstrates how environment variable overriding works.

---

## 7. Why Scope Matters

Environment variable scope helps control where a configuration value should be available.

Workflow-level variables are useful for values shared across the workflow.

Job-level variables are useful when different jobs need different values.

Step-level variables are useful when only one particular step needs a specific value.

Using the correct scope keeps workflow configuration organized and easier to manage.

---

## 8. Important Concept

Environment variables are different from GitHub Actions Secrets.

Environment variables are generally used for configuration values.

Secrets are designed to protect sensitive information such as passwords, tokens, and API keys.

Sensitive information should not be stored as normal environment variables in workflow files.

---

## 9. Key Takeaways

- Environment variables can be defined at workflow, job, and step levels.
- Workflow-level variables can be inherited by jobs and steps.
- Job-level variables apply to steps within that job.
- Step-level variables apply only to the specific step.
- A more specific scope can override a broader scope.
- Correct variable scope helps keep CI/CD workflows organized.
- Sensitive values should be handled using GitHub Actions Secrets rather than plain environment variables.