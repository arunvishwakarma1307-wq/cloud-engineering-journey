# Day 33 - Terraform Targeted Resource Operations

## Practical Summary

In this practical, I learned how Terraform can target a specific resource using the `-target` option.

Three `local_file` resources were defined in the Terraform configuration:

- `local_file.first`
- `local_file.second`
- `local_file.third`

First, a normal Terraform plan was executed to review all three resources.

After that, `terraform plan -target` was used to create a plan focused only on the `local_file.first` resource.

The targeted operation was then applied using `terraform apply -target`. Only the targeted resource was created during this operation.

The created resource was verified, and a normal Terraform plan was used to confirm that the remaining two resources still needed to be created.

Finally, a normal `terraform apply` was used to create the remaining resources.

A final Terraform plan confirmed that all resources were successfully managed and there were no pending infrastructure changes.

## Screenshots

1. `01-initial-plan.png` - Initial plan showing all three resources
2. `02-targeted-plan.png` - Targeted plan for `local_file.first`
3. `03-targeted-apply.png` - Targeted apply creating the selected resource
4. `04-targeted-resource-result.png` - Verification of the targeted resource
5. `05-remaining-resources-plan.png` - Normal plan showing the remaining resources
6. `06-final-apply.png` - Final apply creating the remaining resources
7. `07-final-no-changes.png` - Final plan showing no pending changes

## Terraform Targeting

Terraform normally evaluates the complete configuration and determines the required changes for all resources.

The `-target` option allows Terraform to focus on a specific resource or resource instance.

Example:

```text
terraform plan -target="resource.address"
```

and:

```text
terraform apply -target="resource.address"
```

## Targeted Resource

The resource targeted in this practical was:

```text
local_file.first
```

The other resources were:

```text
local_file.second
local_file.third
```

The targeted operation focused on `local_file.first` while the other resources remained pending.

## Targeted Operation Flow

```text
Three Terraform Resources
        ↓
Normal Terraform Plan
        ↓
Select local_file.first
        ↓
terraform plan -target
        ↓
Review Targeted Plan
        ↓
terraform apply -target
        ↓
First Resource Created
        ↓
Normal Terraform Plan
        ↓
Remaining Resources Detected
        ↓
Normal terraform apply
        ↓
All Resources Created
        ↓
Final terraform plan
        ↓
No Changes
```

## Targeting vs Normal Terraform Workflow

| Feature | Normal Terraform Operation | Targeted Operation |
|---|---|---|
| Scope | Complete configuration | Specific resource |
| Planning | All relevant resources | Selected target |
| Apply | Normal infrastructure workflow | Selected target |
| Typical use | Regular Terraform workflow | Exceptional or specific situations |
| Remaining resources | Managed normally | May remain pending |

## Important Note

The `-target` option should not normally be used as a replacement for the standard Terraform workflow.

Terraform normally expects the complete configuration to be evaluated together.

Targeting can be useful in specific situations such as:

- Troubleshooting
- Recovery operations
- Working with a specific resource
- Exceptional infrastructure situations
- Debugging dependency or resource behavior

The impact of targeting should always be reviewed carefully before applying it.

## Final Result

The `local_file.first` resource was successfully targeted and created using the `-target` option.

The remaining resources were then identified using a normal Terraform plan and created using a normal Terraform apply.

The final Terraform plan confirmed that all three resources matched the Terraform configuration with no pending changes.

## What I Learned

- Terraform `-target`
- Targeted resource planning
- Targeted resource apply
- Resource targeting
- Normal vs targeted Terraform operations
- Remaining resource detection
- Terraform resource verification
- Final Terraform plan verification