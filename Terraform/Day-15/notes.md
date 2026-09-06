# Day 15 - Terraform State & Local Backend

## What is Terraform State?

Terraform State is a file that Terraform uses to keep track of the infrastructure resources managed by Terraform.

The default state file is:

```text
terraform.tfstate
```

It contains information about resources that Terraform has created or is managing.

---

## Why Terraform Uses State

Terraform needs to know the current relationship between:

```text
Terraform Configuration
        ↓
Terraform State
        ↓
Real Infrastructure
```

Terraform uses this information to determine what changes are required during:

```text
terraform plan
```

and:

```text
terraform apply
```

---

## Local Backend

A Terraform backend determines where Terraform stores its state.

In this practical, the local backend was used.

The state was stored on the local computer:

```text
Local Backend
      ↓
terraform.tfstate
      ↓
Day-15 Directory
```

The configuration used:

```hcl
terraform {
  backend "local" {
    path = "terraform.tfstate"
  }
}
```

---

## Terraform State File

The `terraform.tfstate` file is created and updated by Terraform when resources are managed.

It stores information such as:

- Resource type
- Resource name
- Resource ID
- Resource attributes
- Provider information
- Current state information

The state file is normally generated automatically and should not be manually edited.

---

## Resource in Terraform State

The practical used a `local_file` resource:

```text
local_file.remote_state_demo
```

After Terraform created the resource, it appeared in the state:

```text
terraform state list
```

Output:

```text
local_file.remote_state_demo
```

This confirmed that Terraform was tracking the resource.

---

## terraform state show

The following command displays detailed information about a specific resource stored in Terraform state:

```text
terraform state show local_file.remote_state_demo
```

It can show attributes such as:

```text
filename
content
id
file permissions
```

---

## terraform show

The command:

```text
terraform show
```

displays the current Terraform state in a human-readable format.

It is useful for inspecting the resources Terraform currently knows about.

---

## Inspecting the State File

The local state file can also be inspected directly:

```text
Get-Content .\terraform.tfstate
```

The state file is stored as JSON data.

Terraform uses this information internally to track infrastructure.

---

## Terraform Plan and State

Terraform compares the configuration with the current state and infrastructure when running:

```text
terraform plan
```

If everything is synchronized, Terraform reports:

```text
No changes.
Your infrastructure matches the configuration.
```

This indicates that no changes are currently required.

---

## State and Infrastructure Are Different

Terraform state is not the actual infrastructure.

For example:

```text
terraform.tfstate
```

is only Terraform's record of the infrastructure.

The actual resource still exists separately.

Therefore:

```text
State ≠ Infrastructure
```

---

## Local State Limitations

Local state is useful for learning and simple individual projects.

However, it can become difficult when multiple people work on the same infrastructure.

Problems can include:

- Sharing the state file
- Concurrent changes
- State locking requirements
- Collaboration
- Backup and recovery

For team environments, remote backends are commonly used.

---

## Local vs Remote State

| Feature | Local State | Remote State |
|---|---|---|
| Storage | Local computer | Remote/shared backend |
| Collaboration | Limited | Better |
| Team usage | Difficult | Suitable |
| State sharing | Manual | Centralized |
| Example | Local backend | Cloud/object-storage backend |

Remote state will be covered separately in Day-16.

---

## Important Commands

### Initialize Terraform

```text
terraform init
```

### Validate configuration

```text
terraform validate
```

### Create execution plan

```text
terraform plan
```

### Apply configuration

```text
terraform apply
```

### List resources in state

```text
terraform state list
```

### Show resource details

```text
terraform state show
```

### Display complete state

```text
terraform show
```

---

## Key Takeaways

- Terraform uses state to track managed resources.
- The local backend stores state on the local computer.
- `terraform.tfstate` contains Terraform's state information.
- State helps Terraform determine required changes.
- `terraform state list` lists resources tracked by Terraform.
- `terraform state show` displays details of a specific resource.
- `terraform show` displays the current state in a readable format.
- Local state is useful for simple and learning environments.
- Remote state is more suitable for collaborative environments.