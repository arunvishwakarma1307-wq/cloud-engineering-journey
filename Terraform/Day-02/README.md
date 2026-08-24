# Day 2 - Terraform Variables and Outputs

## Variables

Terraform variables are used to provide reusable input values to Terraform configurations.

Instead of hard-coding values directly inside resources, variables can be used to make Terraform configurations more flexible and reusable.

Example:

```hcl
variable "message" {
  description = "Message to write into the file"
  type        = string
  default     = "Hello from Terraform Day-2"
}
```

---

## Using Variables

The variable was used inside the `local_file` resource:

```hcl
resource "local_file" "day2" {
  filename = "${path.module}/terraform-day2.txt"
  content  = var.message
}
```

The value of the variable is accessed using:

```text
var.message
```

---

## Outputs

Terraform outputs are used to display useful information after Terraform creates or updates resources.

In this practical, outputs were used to display the file name and file content.

Example:

```hcl
output "file_name" {
  description = "Path of the file created by Terraform"
  value       = local_file.day2.filename
}
```

---

## Variable Override

The default variable value can be replaced during execution.

The following command was used:

```powershell
terraform apply -var='message=Terraform Day-2 Custom Message'
```

The generated file then contained:

```text
Terraform Day-2 Custom Message
```

---

## Terraform Workflow

```text
variables.tf
     ↓
   main.tf
     ↓
terraform init
     ↓
terraform validate
     ↓
terraform plan
     ↓
terraform apply
     ↓
terraform output
     ↓
Resource managed by Terraform
```

---

## What I Learned

* Terraform variables
* Variable types
* Default variable values
* Using `var.variable_name`
* Terraform outputs
* Output values
* Variable overriding
* Reusable Terraform configuration
