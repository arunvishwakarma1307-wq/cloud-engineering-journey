
# Day-24 Notes: GitHub Actions Workflow Inputs

## 1. What Are Workflow Inputs?

Workflow inputs allow a user to provide values when manually starting a GitHub Actions workflow.

For example, a user can select an environment such as `development`, `staging`, or `production` and enter a custom message before running the workflow.

## 2. What Is `workflow_dispatch`?

`workflow_dispatch` allows a workflow to be started manually from the GitHub Actions interface.

Example:

```yaml
on:
  workflow_dispatch:
```

## 3. Choice Input

A choice input provides a dropdown list of predefined options.

Example:

```yaml
target_environment:
  description: "Select the target environment"
  type: choice
  required: true
  default: staging
  options:
    - development
    - staging
    - production
```

Important properties:

- `description`: Explains the input.
- `type: choice`: Creates a dropdown.
- `required: true`: Requires a value.
- `default`: Sets the initial selection.
- `options`: Lists the allowed choices.

## 4. String Input

A string input allows the user to enter custom text.

Example:

```yaml
deployment_message:
  description: "Enter a message for this run"
  type: string
  required: true
  default: "Day-24 manual input test"
```

## 5. Accessing Input Values

GitHub Actions provides the `inputs` context to read values submitted through workflow inputs.

Example:

```yaml
env:
  TARGET_ENVIRONMENT: ${{ inputs.target_environment }}
  DEPLOYMENT_MESSAGE: ${{ inputs.deployment_message }}
```

These values can then be used in a workflow step:

```yaml
run: |
  echo "Selected environment: $TARGET_ENVIRONMENT"
  echo "Message: $DEPLOYMENT_MESSAGE"
```

In this practical, environment variables are used to pass the values to the shell step.

## 6. Practical Test Results

### Test 1

- Environment: `staging`
- Message: `Day-24 manual input test`
- Result: Successful

### Test 2

- Environment: `production`
- Message: `Day-24 production input test`
- Result: Successful

Both tests displayed the submitted values in GitHub Actions logs.

## 7. Security Best Practices

- Validate inputs before using them in deployment workflows.
- Avoid inserting untrusted input directly into shell commands.
- Never print passwords, tokens, or other secrets in logs.
- Use least-privilege workflow permissions.
- Selecting `production` does not itself deploy an application.

## 8. Key Takeaway

`workflow_dispatch` makes manual workflows more flexible by accepting user-provided values at runtime.

Day-24 demonstrated dropdown and string inputs, along with successful execution and log verification.

## Status

Completed and tested successfully.
