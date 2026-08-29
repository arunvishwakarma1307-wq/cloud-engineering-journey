# Day 07 - Terraform Locals & Expressions

## Local Values

Local Values are reusable named values defined inside a Terraform configuration.

They are created using the `locals` block.

## Practical Locals

The following Local Values were created:

```hcl
project_name = "terraform-day-07"
environment  = "learning"
file_message = "Hello from Terraform Locals"
```

## Resource Usage

The Local Values were used inside a `local_file` resource to generate:

```text
local-output.txt
```

The generated content initially used:

```text
terraform-day-07 - learning - Hello from Terraform Locals
```

## Outputs

The Local Values were exposed using Terraform outputs:

```text
project_name
environment
file_content
```

## Terraform Console

Terraform Console was used to inspect Local Values directly.

Examples:

```text
local.project_name
local.environment
local.file_message
```

## Derived Local Value

A new Local Value was created using an expression:

```text
project_info = "${local.project_name}-${local.environment}"
```

This produced:

```text
terraform-day-07-learning
```

The final file content became:

```text
terraform-day-07-learning - Hello from Terraform Locals
```

## Key Point

Local Values help avoid repeating the same values throughout a Terraform configuration and make configurations easier to maintain.