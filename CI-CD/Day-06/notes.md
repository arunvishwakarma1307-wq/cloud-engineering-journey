# Day-06 — GitHub Actions Job Conditions & if

## 1. GitHub Actions Conditions

GitHub Actions provides conditions that control whether a step or job should run.

The `if` condition evaluates an expression before execution.

Basic concept:

Condition → TRUE → Run

Condition → FALSE → Skip

---

## 2. if Condition

The `if` keyword is used to conditionally execute a GitHub Actions step or job.

A step with an `if` condition runs only when the condition evaluates to TRUE.

If the condition evaluates to FALSE, the step is skipped.

---

## 3. Conditional Step Execution

A conditional step allows a workflow to perform an action only when a specific condition is satisfied.

Example concept:

Build Value
↓
Condition Check
↓
Condition TRUE → Step Executes
↓
Condition FALSE → Step Skipped

This provides control over workflow execution.

---

## 4. Comparing Values

Conditions can compare values.

In Day-06, the generated build value was compared with an expected value.

The TRUE condition compared:

`day-05-build-001`

with:

`day-05-build-001`

Because both values matched, the condition evaluated to TRUE.

---

## 5. TRUE Condition

When a condition evaluates to TRUE, the conditional step executes.

In Day-06, the workflow displayed:

`Condition is TRUE.`

and:

`Conditional step executed successfully.`

This demonstrated successful conditional execution.

---

## 6. FALSE Condition

When a condition evaluates to FALSE, the conditional step is skipped.

In Day-06, the actual generated value was:

`day-05-build-001`

The condition temporarily checked for:

`day-06-build-001`

The values did not match, so the condition evaluated to FALSE.

As a result, the conditional step was skipped.

---

## 7. Skipped Steps

A skipped step is different from a failed step.

### Skipped

The condition was FALSE, so GitHub Actions did not execute the step.

### Failed

The step started executing but an error occurred during execution.

In Day-06, the FALSE condition caused the conditional step to be skipped, while the workflow continued successfully.

---

## 8. Conditions and Workflow Control

Conditions can be used to control different parts of a workflow.

They can help workflows make decisions based on values or other workflow information.

For example:

- Run a step only when a value matches
- Skip a step when a condition is not satisfied
- Run different steps under different conditions
- Control workflow execution based on previous results

---

## 9. Day-06 Practical Concept

Day-06 demonstrated two different condition results.

### TRUE Case

Generated value:

`day-05-build-001`

Expected value:

`day-05-build-001`

Result:

Conditional step executed.

### FALSE Case

Generated value:

`day-05-build-001`

Expected value:

`day-06-build-001`

Result:

Conditional step skipped.

---

## 10. Key Difference

The main concept of Day-06 is:

`if` condition TRUE → Step runs

`if` condition FALSE → Step is skipped

This allows GitHub Actions workflows to make execution decisions based on conditions.

---

## Final Understanding

The `if` keyword provides conditional control in GitHub Actions.

A workflow can check a condition before running a step.

If the condition is TRUE, the step executes.

If the condition is FALSE, the step is skipped.

Day-06 demonstrated both TRUE and FALSE conditions and verified their behavior in GitHub Actions.