# Day 1 - Terraform Basics and Workflow

## Terraform

Terraform is an Infrastructure as Code (IaC) tool used to define, create, update, and manage infrastructure using configuration files.

In this practical, Terraform was used with the local provider to understand the basic Terraform workflow without using AWS.

## Terraform Workflow

The basic Terraform workflow used in this practical was:

```text
main.tf
   ↓
terraform init
   ↓
terraform plan
   ↓
terraform apply
   ↓
Resource created
   ↓
terraform state list
   ↓
terraform destroy
   ↓
Resource deleted
```

## Terraform Configuration

The main.tf file defined a local_file resource.

The resource created:

```text
terraform-day1.txt
```

with the content:

```text
Hello from Terraform Day-1
```

## Terraform Init

The terraform init command initialized the Terraform working directory and downloaded the required hashicorp/local provider.

Provider installed:

```text
hashicorp/local v2.9.0
```

Terraform also created:

```text
.terraform/
.terraform.lock.hcl
```

## Terraform Plan

The terraform plan command displayed the changes Terraform was going to make before applying them.

The plan showed:

```text
Plan: 1 to add, 0 to change, 0 to destroy.
```

## Terraform Apply

The terraform apply command created the resource defined in main.tf.

The following file was created:

```text
terraform-day1.txt
```

## Terraform State

Terraform maintains a state file to keep track of resources it manages.

The state file created was:

```text
terraform.tfstate
```

The managed resource was verified using:

```text
local_file.day1
```

## Terraform Destroy

The terraform destroy command removed the resource managed by Terraform.

After destruction, terraform-day1.txt no longer existed.

---

## Screenshots

### Terraform Init

![Terraform Init](screenshots/01-terraform-init.png)

### Terraform Plan

![Terraform Plan](screenshots/02-terraform-plan.png)

### Terraform Apply and State

![Terraform Apply and State](screenshots/03-terraform-apply-state.png)


## What I Learned

- Terraform basics
- Infrastructure as Code
- Terraform configuration files
- Terraform providers
- terraform init
- terraform plan
- terraform apply
- Terraform state
- terraform state list
- terraform destroy
- Basic Terraform workflow
