# Day 32 - Terraform Drift Detection & Refresh-Only

## Terraform Drift

Terraform drift occurs when the actual state of infrastructure becomes different from the state expected by the Terraform configuration.

Drift can happen when infrastructure is changed outside Terraform.

Examples:

- A resource is manually deleted
- A resource is manually modified
- Infrastructure is changed using another tool
- Infrastructure is changed directly by an administrator

## Desired State vs Actual State

Terraform works with a desired configuration and compares it with the current infrastructure state.

```text
Terraform Configuration
        ↓
Desired State
        ↓
Compare
        ↑
Actual Infrastructure
```

If the desired state and actual state are different, Terraform can detect the difference.

## Drift Detection

Terraform refreshes information about managed resources during planning.

When Terraform finds that a resource has changed outside Terraform, it can report the change as an external modification or drift.

Drift detection helps administrators understand whether infrastructure has changed unexpectedly.

## `terraform plan`

A normal Terraform plan compares the Terraform configuration with the current state and refreshed resource information.

If drift is detected, Terraform can create a plan to make the infrastructure match the Terraform configuration again.

The normal plan can therefore show corrective infrastructure actions.

## Refresh-Only Mode

Terraform provides refresh-only mode to handle changes that happened outside Terraform.

Refresh-only mode focuses on updating Terraform state to reflect the current real-world infrastructure instead of planning changes to make the infrastructure match the configuration.

## `terraform plan -refresh-only`

The `-refresh-only` option creates a refresh-only plan.

It shows changes detected outside Terraform and explains how those changes would affect Terraform state.

The refresh-only plan does not propose normal infrastructure changes to restore the desired configuration.

## `terraform apply -refresh-only`

`terraform apply -refresh-only` applies the refresh-only operation.

It updates Terraform state to represent the current condition of the infrastructure without modifying the actual infrastructure.

This is useful when an external change is intentional and Terraform state needs to record the new condition.

## Normal Plan vs Refresh-Only

| Feature | Normal Plan | Refresh-Only Plan |
|---|---|---|
| Detects external changes | Yes | Yes |
| Reviews drift | Yes | Yes |
| Updates Terraform state | During refresh | Yes, when applied |
| Plans corrective infrastructure changes | Yes | No |
| Changes infrastructure when applied | Can | No |

## State Synchronization

Terraform state should represent the current real-world condition of managed infrastructure.

When infrastructure is changed outside Terraform, refresh-only operations can synchronize the Terraform state with those external changes.

```text
External Change
      ↓
Drift Detected
      ↓
Refresh-Only
      ↓
Terraform State Updated
```

## Drift and Resource Recreation

After Terraform state reflects an externally deleted or changed resource, a normal Terraform plan can compare the updated state with the configuration.

If the configuration still requires the resource, Terraform may plan to create or recreate it.

This allows Terraform to identify what must be done to return infrastructure to the desired configuration.

## Why Drift Detection Is Important

Drift detection is important because infrastructure may sometimes be modified manually or by systems outside Terraform.

Detecting drift helps administrators:

- Identify unexpected changes
- Keep Terraform state accurate
- Understand infrastructure differences
- Review external modifications
- Decide whether changes should be kept or reverted
- Maintain infrastructure consistency

## Important Points

- Drift means actual infrastructure differs from the expected Terraform state.
- External changes can create drift.
- Normal `terraform plan` can detect drift and plan corrective actions.
- `terraform plan -refresh-only` reviews external changes for state synchronization.
- `terraform apply -refresh-only` updates Terraform state without changing infrastructure.
- Refresh-only mode does not restore infrastructure to the Terraform configuration.
- A later normal plan can identify resources that need to be created or changed to match the configuration.
- Terraform state should accurately represent managed infrastructure.
- Drift detection is important for reliable infrastructure management.

## Key Terms

- Terraform Drift
- Drift Detection
- Actual State
- Desired State
- Terraform State
- Refresh
- Refresh-Only Mode
- `terraform plan`
- `terraform plan -refresh-only`
- `terraform apply -refresh-only`
- State Synchronization
- External Infrastructure Changes
- Infrastructure Consistency