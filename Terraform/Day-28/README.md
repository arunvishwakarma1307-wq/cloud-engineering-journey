# Day 28 - Terraform Saved Plan and Plan Review

## Practical Summary

In this practical, I learned how Terraform can save an execution plan into a plan file and how the saved plan can be reviewed before applying it.

A simple Terraform configuration was created using the `local_file` provider. The configuration defined a `local_file` resource that creates `plan-demo.txt`.

First, a normal Terraform plan was generated to understand the proposed infrastructure changes.

Then, the `terraform plan -out=tfplan` command was used to save the generated plan into a `tfplan` file.

The saved plan was inspected using `terraform show tfplan`. This allowed the planned resource creation to be reviewed before applying it.

After reviewing the saved plan, `terraform apply tfplan` was used to apply the exact saved plan.

Finally, the created file and Terraform output were verified, followed by a final `terraform plan` to confirm that there were no remaining infrastructure changes.

## Screenshots

1. `01-saved-plan-show.png` - Inspecting the saved Terraform plan
2. `02-saved-plan-apply.png` - Applying the saved Terraform plan
3. `03-final-saved-plan-result.png` - Verifying the created file and Terraform output
4. `04-final-no-changes.png` - Final Terraform plan showing no pending changes

## Final Result

The Terraform configuration was successfully planned, saved into a plan file, reviewed, and applied.

The `plan-demo.txt` file was created successfully, and the final Terraform plan confirmed that the infrastructure matched the configuration with no pending changes.

## What I Learned

- Terraform saved plans
- `terraform plan -out`
- Terraform plan files
- `terraform show`
- Reviewing a saved plan
- `terraform apply` with a saved plan
- Verifying the final Terraform state