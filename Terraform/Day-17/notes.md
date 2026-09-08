# Day 17 - Terraform Workspaces Notes

## What is a Terraform Workspace?

A Terraform Workspace is a separate instance of Terraform state associated with the same Terraform configuration.

Workspaces allow the same configuration to manage different infrastructure states independently.

## Default Workspace

Every Terraform working directory starts with a workspace named:

```text
default
```

The default workspace is created automatically.

## Why Use Workspaces?

Workspaces can be useful when the same Terraform configuration needs to manage multiple independent environments.

For example:

```text
default
dev
test
prod
```

Each workspace maintains its own state.

## Workspace Isolation

Terraform Workspaces provide separate state for each workspace.

```text
Same Terraform Configuration
          |
          +--- default → State A
          |
          +--- dev     → State B
```

Changes managed in one workspace are tracked separately from another workspace.

## terraform.workspace

Terraform provides the built-in value:

```text
terraform.workspace
```

It returns the name of the currently selected workspace.

Example:

```hcl
filename = "${path.module}/${terraform.workspace}.txt"
```

If the active workspace is:

```text
default
```

the filename becomes:

```text
default.txt
```

If the active workspace is:

```text
dev
```

the filename becomes:

```text
dev.txt
```

## Creating a Workspace

A new workspace can be created using:

```text
terraform workspace new <workspace-name>
```

Example:

```text
terraform workspace new dev
```

This creates the workspace and switches Terraform to it.

## Listing Workspaces

Available workspaces can be displayed using:

```text
terraform workspace list
```

Example:

```text
  default
* dev
```

The `*` indicates the currently active workspace.

## Selecting a Workspace

An existing workspace can be selected using:

```text
terraform workspace select <workspace-name>
```

Example:

```text
terraform workspace select default
```

## Checking the Current Workspace

The currently active workspace can be displayed using:

```text
terraform workspace show
```

## Workspace State

Terraform maintains separate state for each workspace.

For example:

```text
Workspace: default
State: default workspace state

Workspace: dev
State: dev workspace state
```

The same resource configuration can therefore be managed independently in different workspaces.

## Workspace and Resources

Consider:

```hcl
resource "local_file" "workspace_demo" {
  filename = "${path.module}/${terraform.workspace}.txt"

  content = "This file was created in the ${terraform.workspace} workspace."
}
```

The resource configuration remains the same, but `terraform.workspace` changes according to the active workspace.

Therefore:

```text
default → default.txt
dev     → dev.txt
```

## Workspace vs Configuration

A workspace does not create a separate Terraform configuration.

Instead:

```text
Same Configuration
       |
       +--- Workspace A → State A
       |
       +--- Workspace B → State B
```

The configuration remains the same while the state is separated.

## Important Commands

```text
terraform workspace show
terraform workspace list
terraform workspace new <name>
terraform workspace select <name>
```

## Important Points

- Terraform automatically provides the `default` workspace.
- A new workspace can be created using `terraform workspace new`.
- Existing workspaces can be switched using `terraform workspace select`.
- `terraform workspace list` displays available workspaces.
- `terraform.workspace` returns the active workspace name.
- Each workspace maintains separate state.
- The same Terraform configuration can be used across multiple workspaces.

## Practical Example

The practical used:

```text
default workspace → default.txt
dev workspace     → dev.txt
```

This demonstrated how the active workspace can influence resource configuration while maintaining separate Terraform state.