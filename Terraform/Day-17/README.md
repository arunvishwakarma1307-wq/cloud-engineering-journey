# Day 17 - Terraform Workspaces

## Overview

This practical demonstrates Terraform Workspaces and how the same Terraform configuration can be used with multiple isolated Terraform states.

Terraform Workspaces allow the same configuration to manage different sets of infrastructure independently.

In this practical, the `default` and `dev` workspaces were used.

## Objective

- Understand Terraform Workspaces.
- Check the current workspace.
- Create and switch between workspaces.
- Understand workspace-specific state.
- Use `terraform.workspace` in a resource configuration.
- Verify resources created in different workspaces.

## Technologies Used

- Terraform
- PowerShell
- HashiCorp Local Provider

## Terraform Configuration

The practical used a `local_file` resource:

```hcl
resource "local_file" "workspace_demo" {
  filename = "${path.module}/${terraform.workspace}.txt"

  content = "This file was created in the ${terraform.workspace} workspace."
}
```

The `terraform.workspace` value represents the currently selected workspace.

## Workspace Structure

```text
Terraform Configuration
        |
        +--- default workspace
        |       |
        |       +--- default.txt
        |
        +--- dev workspace
                |
                +--- dev.txt
```

The same Terraform configuration was used in both workspaces.

## Default Workspace

Every Terraform working directory starts with a workspace named:

```text
default
```

The default workspace was checked using:

```text
terraform workspace show
```

The configuration was then applied in the default workspace, which created:

```text
default.txt
```

## Dev Workspace

A separate workspace named:

```text
dev
```

was created and selected.

The same Terraform configuration was applied in the `dev` workspace.

This resulted in:

```text
dev.txt
```

## Workspace-Specific State

Terraform Workspaces maintain separate state for each workspace.

Conceptually:

```text
default workspace
        |
        +--- default state

dev workspace
        |
        +--- dev state
```

This allows the same configuration to manage separate resources independently.

## Workspace Commands

Important commands used in this practical include:

```text
terraform workspace show
terraform workspace list
terraform workspace new dev
terraform workspace select default
```

## State Verification

The active workspace state was checked using:

```text
terraform state list
```

The actual resource shown during the practical was:

```text
local_file.workspace_demo
```

## Final Verification

After switching back to the `default` workspace, the active workspace was verified and a final Terraform plan was performed.

The final plan reported:

```text
No changes. Your infrastructure matches the configuration.
```

This confirmed that the Terraform configuration and state were synchronized.

## Screenshots

1. `01-workspace-init.png` - Terraform initialization
2. `02-default-workspace.png` - Default workspace
3. `03-default-workspace-apply.png` - Applying configuration in default workspace
4. `04-default-workspace-file.png` - Default workspace file
5. `05-dev-workspace-active.png` - Dev workspace active
6. `06-dev-workspace-files.png` - Files created by different workspaces
7. `07-workspace-list.png` - Available Terraform workspaces
8. `08-dev-workspace-state.png` - Resource in workspace state
9. `09-default-workspace-selected.png` - Default workspace selected

## What I Learned

- Terraform Workspaces
- Default workspace
- Creating a workspace
- Switching between workspaces
- Workspace-specific state
- `terraform.workspace`
- Resource isolation between workspaces
- Terraform state verification
- Using the same configuration for different workspaces