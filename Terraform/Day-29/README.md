# Day 29 - Terraform Formatting

## Practical Summary

In this practical, I learned how Terraform automatically formats Terraform configuration files using the `terraform fmt` command.

A Terraform configuration was intentionally created with incorrect indentation and formatting. The `terraform fmt -check` command was first used to check whether the configuration followed Terraform's standard formatting.

The `terraform fmt` command was then used to automatically format the configuration. Terraform corrected the indentation and aligned the configuration according to its standard formatting style.

After formatting, the configuration was checked again using `terraform fmt -check` to confirm that the formatting was correct.

The Terraform Local provider was initialized and the configuration was validated using `terraform validate`.

## Screenshots

1. `01-fmt-check-success.png` - Successful Terraform formatting check
2. `02-formatted-main-tf.png` - Formatted Terraform configuration
3. `03-terraform-validate.png` - Successful Terraform configuration validation

## Final Result

The Terraform configuration was successfully formatted using `terraform fmt`.

The formatting check passed successfully, and `terraform validate` confirmed that the Terraform configuration was valid.

## What I Learned

- Terraform code formatting
- `terraform fmt`
- `terraform fmt -check`
- Automatic Terraform formatting
- Terraform configuration readability
- `terraform validate`
- Provider initialization