# Day 24 - Terraform Remote State Data Source Notes

## What is terraform_remote_state?

`terraform_remote_state` is a Terraform data source used to read output values from another Terraform project's state.

It allows separate Terraform configurations to share information.

## Source and Consumer

A common setup contains two Terraform configurations:

```text
Source Project
      ↓
Terraform State
      ↓
Consumer Project
```

The source project creates resources and defines outputs.

The consumer project reads those outputs from the source state.

## Terraform State

Terraform state stores information about resources managed by Terraform.

The state can also contain output values defined by the Terraform configuration.

`terraform_remote_state` reads the required output values from another state.

## How terraform_remote_state Works

A consumer configuration can define:

```hcl
data "terraform_remote_state" "source" {
  backend = "local"

  config = {
    path = "../source/terraform.tfstate"
  }
}
```

The `backend` specifies how the state is stored.

The `config` provides the information required to access that state.

## Reading an Output

Outputs from the remote state can be accessed using:

```hcl
data.terraform_remote_state.source.outputs.source_message
```

Here:

- `source` is the name of the remote state data source.
- `outputs` refers to the outputs stored in the source state.
- `source_message` is the required output.

## Why Use terraform_remote_state?

It is useful when separate Terraform projects need to share information.

For example:

```text
Network Project
      ↓
Network Outputs
      ↓
Application Project
```

The application project can read required information from the network project's state.

## Important Points

- `terraform_remote_state` is a data source.
- It reads outputs from another Terraform state.
- The source project must have the required output.
- The consumer project can use the retrieved output in its configuration.
- Source and consumer can be separate Terraform projects.
- The state can be stored using different supported backends.
- Only the required output values should be shared between projects.

## Summary

`terraform_remote_state` allows one Terraform configuration to read output values from another Terraform project's state.