# Day 25 - Terraform Commands

## 1. Initialize Terraform

terraform init

Initializes the Terraform working directory and downloads the required providers.


## 2. Check Valid Variable

terraform plan

Checks the Terraform configuration using the default valid value `dev`.

Screenshot:
01-valid-variable-plan.png


## 3. Test Invalid Variable

terraform plan -var="environment=testing"

Tests the variable validation rule with an invalid value.

Terraform rejected `testing` because only `dev`, `staging`, and `prod` are allowed.

Screenshot:
02-invalid-variable-validation.png


## 4. Apply Valid Production Value

terraform apply -var="environment=prod"

Applies the configuration using the valid `prod` value.

Screenshot:
03-valid-prod-apply.png


## 5. Check Terraform Output

terraform output

Displays the Terraform output values after applying the configuration.


## 6. Check Created File

Get-Content .\prod.txt

Displays the content of the created `prod.txt` file.

Screenshot:
04-validation-success-result.png


## 7. Initialize Terraform After Adding AWS Provider

terraform init

Initializes Terraform again after adding the AWS provider for the Dynamic Block practical.


## 8. Test Dynamic Block

terraform plan

Shows the execution plan and confirms that the Dynamic Block generates the required `ingress` blocks for ports 80 and 443.

Screenshot:
05-dynamic-block-plan.png


## 9. Validate Terraform Configuration

terraform validate

Checks whether the Terraform configuration is syntactically and structurally valid.

Screenshot:
06-dynamic-block-validation.png


## Error Encountered During Dynamic Block Setup

terraform plan

The first Dynamic Block example used the TLS self-signed certificate resource with two `subject` blocks.

Terraform returned an error because that resource allows at most one `subject` block.

No screenshot was taken for this error.

The configuration was then changed to an AWS Security Group example where multiple `ingress` blocks can be generated dynamically.

## Screenshots

1. `01-valid-variable-plan.png` - Valid variable plan
2. `02-invalid-variable-validation.png` - Invalid variable rejected by validation
3. `03-valid-prod-apply.png` - Valid `prod` value applied successfully
4. `04-validation-success-result.png` - Final output and created file
5. `05-dynamic-block-plan.png` - Dynamic blocks generated for ports 80 and 443
6. `06-dynamic-block-validation.png` - Final Terraform configuration validation