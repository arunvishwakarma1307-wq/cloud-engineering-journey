# Day 2 - Terraform Variables and Outputs Notes

## Terraform Variables

Variables allow Terraform configurations to receive input values.

They help avoid hard-coding values directly into resources.

---

## Variable Syntax

```hcl
variable "message" {
  description = "Message to write into the file"
  type        = string
  default     = "Hello from Terraform Day-2"
}
```

Important parts:

```text
message     → Variable name
description → Description of the variable
type        → Data type
default     → Default value
```

---

## Variable Types

Common Terraform variable types include:

```text
string
number
bool
list
map
set
object
tuple
```

In Day-02, we used:

```text
string
```

---

## Accessing a Variable

Terraform variables can be accessed using:

```text
var.variable_name
```

Example:

```hcl
content = var.message
```

---

## Default Value

A variable can have a default value:

```hcl
default = "Hello from Terraform Day-2"
```

If no other value is provided, Terraform uses the default value.

---

## Variable Override

A variable can be overridden using the `-var` option.

Example:

```powershell
terraform apply -var='message=Terraform Day-2 Custom Message'
```

This replaces the default value for that execution.

---

## Terraform Outputs

Outputs display useful information from Terraform resources.

Example:

```hcl
output "file_name" {
  value = local_file.day2.filename
}
```

Another example:

```hcl
output "file_content" {
  value = local_file.day2.content
}
```

---

## Terraform Output Command

To display stored output values:

```powershell
terraform output
```

A specific output can also be displayed:

```powershell
terraform output file_name
```

---

## Resource and Variable Flow

```text
Variable
   ↓
var.message
   ↓
local_file.day2
   ↓
terraform-day2.txt
   ↓
output
```

---

## Important Files

```text
variables.tf
```

Contains variable definitions.

```text
main.tf
```

Contains the Terraform resource configuration.

```text
outputs.tf
```

Contains output definitions.

```text
.terraform.lock.hcl
```

Records provider selections and versions.

---

## Important Git Rule

Terraform state files should not normally be committed to GitHub.

The Day-02 `.gitignore` excludes:

```text
.terraform/
*.tfstate
*.tfstate.*
terraform-day2.txt
```

This keeps local Terraform state and generated files out of the Git repository.
