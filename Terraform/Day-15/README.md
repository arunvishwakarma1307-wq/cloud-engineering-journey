# Day 15 - Terraform State & Local Backend

## Terraform State

Terraform State is used to keep track of the resources managed by Terraform.

In this practical, a local file resource was created and Terraform stored information about the resource in the local state file:

```text
terraform.tfstate
```

---

## Local Backend

Terraform uses a backend to store its state.

In this practical, the `local` backend was used:

```text
Local Backend
     ↓
terraform.tfstate
     ↓
Local Computer
```

The state file was stored inside the Day-15 Terraform working directory.

---

## Resource Creation

A `local_file` resource was created using Terraform.

The resource generated:

```text
remote-state-demo.txt
```

Terraform then recorded the resource information in its state.

---

## State Verification

The Terraform state was verified using:

```text
terraform state list
```

The resource appeared as:

```text
local_file.remote_state_demo
```

The state file was also inspected to understand the information Terraform stores about managed resources.

---

## Terraform Plan Verification

After the resource was created, `terraform plan` was executed again.

Terraform reported that there were no changes required.

This confirmed that the Terraform configuration and the current managed resource were synchronized.

---

## Screenshots

1. `01-local-state-plan.png` - Terraform plan showing the resource that would be created
2. `02-state-resource-created.png` - Resource successfully created using Terraform
3. `03-local-state-created.png` - Local `terraform.tfstate` file created
4. `04-resource-in-state.png` - Resource registered in Terraform state
5. `05-state-file-details.png` - Local state file name and size verification
6. `06-local-state-no-changes.png` - Terraform plan showing no changes

---

## What I Learned

- Terraform State
- Local Backend
- `terraform.tfstate`
- Resource state tracking
- `terraform state list`
- `terraform state show`
- `terraform show`
- State file inspection
- Terraform plan verification