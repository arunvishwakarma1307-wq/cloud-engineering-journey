# Day 31 - Terraform Resource Replacement

## Practical Summary

In this practical, I learned how Terraform can intentionally replace an existing resource using the `-replace` option.

A simple `local_file` resource was created to demonstrate the resource replacement workflow without using any real cloud infrastructure.

First, the Terraform configuration was initialized and the resource was created successfully.

After the resource was created, `terraform plan -replace` was used to preview the replacement operation. Terraform showed that the existing resource would be destroyed and a new resource would be created.

The replacement was then performed using `terraform apply -replace`.

After the replacement, the generated file was verified to confirm that the resource was successfully recreated.

Finally, `terraform plan` was executed again and Terraform confirmed that there were no remaining infrastructure changes.

## Screenshots

1. `01-initial-apply.png` - Initial resource creation
2. `02-replace-plan.png` - Terraform plan showing the resource replacement
3. `03-replace-apply.png` - Applying the resource replacement
4. `04-replacement-resource-result.png` - Verifying the replaced resource and generated file
5. `05-final-no-changes.png` - Final Terraform plan showing no pending changes

## Resource Replacement Flow

```text
Existing Resource
       ↓
terraform plan -replace
       ↓
Review Replacement
       ↓
terraform apply -replace
       ↓
Destroy Existing Resource
       ↓
Create New Resource
       ↓
Verify Resource
       ↓
terraform plan
       ↓
No Changes
```

## Final Result

The Terraform resource was successfully created and intentionally replaced using the `-replace` option.

The replacement operation was reviewed using `terraform plan -replace` and then executed using `terraform apply -replace`.

The generated file was successfully verified after replacement, and the final Terraform plan confirmed that there were no pending infrastructure changes.

## What I Learned

- Terraform resource replacement
- `terraform plan -replace`
- `terraform apply -replace`
- Forced resource replacement
- Destroy and recreate behavior
- Reviewing replacement plans
- Verifying replaced resources
- Final Terraform plan verification