# Day-15: Reusable Workflows with Inputs — Notes

## 1. What Are Reusable Workflow Inputs?

Reusable workflow inputs allow a calling workflow to pass values to another workflow.

These values make a reusable workflow flexible because the same workflow can be used with different input values.

## 2. Why Are Inputs Useful?

- Pass application names or environment values.
- Reuse the same workflow for different applications.
- Avoid duplicating workflow files.
- Make CI/CD pipelines easier to maintain.
- Customize workflow behavior using supplied values.

## 3. Defining Inputs with `workflow_call`

The `workflow_call` trigger allows another workflow to call a reusable workflow.

Inputs are defined under `workflow_call.inputs`.

Example:

```yaml
on:
  workflow_call:
    inputs:
      app_name:
        description: "Name of the application"
        required: true
        type: string
```

### Important properties

- `app_name`: input name.
- `description`: explains the input.
- `required: true`: the calling workflow must provide the input.
- `type: string`: the input accepts text.

## 4. Passing Inputs with `with`

The calling workflow passes values to the reusable workflow using the `with` keyword.

Example:

```yaml
jobs:
  call-reusable-workflow:
    uses: ./.github/workflows/day15-reusable.yml
    with:
      app_name: "Cloud Guard"
```

Here, `Cloud Guard` is the value passed to the reusable workflow.

## 5. Accessing an Input

Inside the reusable workflow, the received value can be accessed using the `inputs` context.

Example:

```yaml
${{ inputs.app_name }}
```

This expression returns the value supplied by the calling workflow.

## 6. How Input Passing Works

1. The reusable workflow defines an input.
2. The main workflow calls the reusable workflow.
3. The main workflow supplies a value using `with`.
4. The reusable workflow receives the value.
5. The value can be used in steps and displayed in logs.

## 7. Required vs Optional Inputs

| Required Input | Optional Input |
|---|---|
| Must be provided by the caller. | Can be omitted if a default is configured or the input is not required. |
| Uses `required: true`. | Uses `required: false`. |
| Useful when the value is essential. | Useful when the value is optional. |

## 8. Important Points

- Input names must match between the reusable workflow definition and the calling workflow.
- The supplied value must match the declared input type.
- Use `with` to pass inputs to a reusable workflow.
- Use `${{ inputs.input_name }}` to access the value.
- A workflow using `workflow_dispatch` can be started manually from GitHub Actions.
- Reusable workflow inputs are different from secrets. Inputs are for values such as names or configuration; secrets are for sensitive information.

## 9. Day-15 Summary

Today, I learned how to define inputs in reusable workflows, pass values through the `with` keyword, and access received values using the `inputs` context.

The practical test confirmed that the main workflow successfully passed `Cloud Guard` to the reusable workflow.