# Day 32 - Terraform Drift Detection & Refresh-Only

## Practical Summary

In this practical, I learned how Terraform detects **drift**, which occurs when a resource managed by Terraform is changed or removed outside Terraform.

A `local_file` resource was first created using Terraform. After verifying the original file, the file was manually changed outside Terraform to simulate infrastructure drift.

A normal `terraform plan` detected the difference between the Terraform configuration and the actual resource state and showed that the resource needed to be created again.

Next, `terraform plan -refresh-only` was used to inspect changes made outside Terraform without changing the actual infrastructure. Terraform detected that the managed file was no longer present and showed the state changes that would be recorded.

The `terraform apply -refresh-only` command was then used to update Terraform state to reflect the current real-world condition without modifying the infrastructure.

Finally, `terraform plan` was executed again to verify the resulting state and confirm that Terraform recognized that the resource needed to be recreated according to the configuration.

## Screenshots

1. `01-initial-apply.png` - Initial Terraform resource creation
2. `02-before-drift.png` - Original Terraform-managed file content
3. `03-manual-drift.png` - File manually changed outside Terraform
4. `04-drift-detected-plan.png` - Normal Terraform plan detecting drift
5. `05-refresh-only-plan.png` - Refresh-only plan detecting external changes
6. `06-refresh-only-apply.png` - Applying refresh-only state update
7. `07-final-drift-plan.png` - Final plan showing the resource needs recreation

## Drift Detection Flow

```
Terraform Managed Resource
        ↓
Manual Change Outside Terraform
        ↓
Infrastructure Drift
        ↓
terraform plan
        ↓
Drift Detected
        ↓
terraform plan -refresh-only
        ↓
Review State Changes
        ↓
terraform apply -refresh-only
        ↓
Terraform State Updated
        ↓
terraform plan
        ↓
Resource Recreation Planned
```

## Terraform Drift

Terraform drift happens when the actual state of a managed resource becomes different from the configuration and state known by Terraform.

Examples include:

- A resource is manually deleted
- A resource is manually modified
- Infrastructure is changed outside Terraform
- Infrastructure is changed using another tool

Terraform can detect these differences during the refresh process.

## `terraform plan`

A normal `terraform plan` compares the desired Terraform configuration with the current state and refreshed resource information.

When drift is detected, Terraform can generate a plan to bring the infrastructure back to the configuration.

## `terraform plan -refresh-only`

The `-refresh-only` option is used to review changes that happened outside Terraform and determine how Terraform state should be updated.

It does not plan normal infrastructure changes to restore the configuration.

## `terraform apply -refresh-only`

`terraform apply -refresh-only` updates Terraform state to reflect the current real-world condition without modifying the actual infrastructure.

This is useful when external changes are intentional or when Terraform state needs to be synchronized with the current infrastructure.

## Normal Plan vs Refresh-Only

```
terraform plan
        ↓
Detects drift
        ↓
Can plan corrective infrastructure changes


terraform plan -refresh-only
        ↓
Reviews external changes
        ↓
Shows state synchronization changes


terraform apply -refresh-only
        ↓
Updates Terraform state
        ↓
Does not modify infrastructure
```

## Final Result

Terraform successfully detected a change made outside Terraform.

The normal Terraform plan identified that the managed resource was no longer available and planned its recreation.

The refresh-only workflow successfully detected the external change and updated Terraform state without modifying the actual infrastructure.

The final Terraform plan then showed that the resource needed to be recreated to match the Terraform configuration.

## What I Learned

- Terraform drift
- Infrastructure drift detection
- External resource changes
- `terraform plan`
- `terraform plan -refresh-only`
- `terraform apply -refresh-only`
- Terraform state synchronization
- Difference between normal plan and refresh-only plan
- Detecting deleted resources
- Resource recreation after drift