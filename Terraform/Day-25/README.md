# Day 25 - Terraform Variable Validation and Dynamic Blocks

## Practical

In this practical, I learned two Terraform concepts:

- Variable Validation
- Dynamic Blocks

### Variable Validation

A validation rule was added to the `environment` variable so that only `dev`, `staging`, and `prod` values are accepted.

An invalid value such as `testing` was rejected by Terraform.

A valid `prod` value was successfully applied and the `prod.txt` file was created.

### Dynamic Blocks

I learned how a `dynamic` block can generate repeated nested blocks automatically.

A security group example was used with two ingress rules:

- Port 80
- Port 443

Terraform generated both `ingress` blocks from the variable data.

## Screenshots

1. `01-valid-variable-plan.png` - Valid variable plan
2. `02-invalid-variable-validation.png` - Invalid variable rejected by validation
3. `03-valid-prod-apply.png` - Valid `prod` value applied successfully
4. `04-validation-success-result.png` - Final output and created file
5. `05-dynamic-block-plan.png` - Dynamic blocks generated for ports 80 and 443
6. `06-dynamic-block-validation.png` - Final Terraform configuration validation

## Final Result

Terraform successfully validated variable values and rejected invalid input.

The Dynamic Block successfully generated multiple `ingress` blocks from variable data.

Both Terraform concepts were practiced successfully.