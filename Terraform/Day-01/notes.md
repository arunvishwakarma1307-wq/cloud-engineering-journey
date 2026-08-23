# Day 1 - Terraform Notes

## What is Terraform?

Terraform is an Infrastructure as Code (IaC) tool used to define and manage infrastructure through configuration files.

Instead of manually creating resources, we describe the desired infrastructure in Terraform configuration files.

---

## Terraform Configuration File

Terraform configuration files normally use the:

```text
.tf
```

extension.

Example:

```text
main.tf
```

---

## Provider

A provider allows Terraform to interact with a specific platform or service.

In this practical, the Local provider was used:

```text
hashicorp/local
```

The installed version was:

```text
v2.9.0
```

---

## Resource

A resource represents something Terraform manages.

The resource used in this practical was:

```hcl
resource "local_file" "day1" {
  filename = "${path.module}/terraform-day1.txt"
  content  = "Hello from Terraform Day-1"
}
```

Here:

```text
local_file → resource type
day1       → resource name
```

---

## Terraform Init

```text
terraform init
```

Initializes a Terraform working directory.

It downloads required providers and prepares Terraform to work with the configuration.

---

## Terraform Plan

```text
terraform plan
```

Shows the changes Terraform intends to make.

It does not actually create or modify the resources.

---

## Terraform Apply

```text
terraform apply
```

Applies the configuration and creates or updates the resources.

---

## Terraform State

Terraform keeps track of managed resources using a state file:

```text
terraform.tfstate
```

The state allows Terraform to understand what resources already exist and what changes are required.

---

## Terraform State List

```text
terraform state list
```

Displays resources currently tracked in the Terraform state.

Example:

```text
local_file.day1
```

---

## Terraform Destroy

```text
terraform destroy
```

Removes resources managed by the current Terraform configuration.

---

## Important Files

```text
main.tf
```

Contains Terraform configuration.

```text
.terraform/
```

Contains Terraform working data and downloaded provider information.

```text
.terraform.lock.hcl
```

Records provider selections and versions.

```text
terraform.tfstate
```

Stores Terraform state.

```text
terraform.tfstate.backup
```

Backup of the previous state.

---

## Important GitHub Rule

Terraform state files should generally not be committed to GitHub because they may contain sensitive infrastructure information.

Use `.gitignore` for:

```text
.terraform/
*.tfstate
*.tfstate.*
```
