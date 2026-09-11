# Day 20 - Terraform moved Blocks

## Overview

Day 20 covers Terraform `moved` blocks.

A `moved` block is used when a Terraform resource needs to be renamed or moved to a different resource address without destroying and recreating the actual infrastructure.

This is especially useful when refactoring Terraform configurations while keeping existing resources.

---

## Objective

The objectives of this practical were:

- Understand Terraform `moved` blocks
- Rename a Terraform resource safely
- Understand Terraform resource addresses
- Avoid unnecessary resource destruction and recreation
- Move an existing resource from one Terraform address to another
- Verify the updated resource address in Terraform state

---

## Technologies Used

- Terraform
- Terraform Local Provider
- PowerShell
- Windows 11

---

## Initial Resource

The practical initially created a local file resource with the address:

```text
local_file.old_name
```

The resource created:

```text
moved-demo.txt
```

The file content was:

```text
Terraform moved block practical.
```

---

## Resource Rename

The resource was renamed from:

```text
local_file.old_name
```

to:

```text
local_file.new_name
```

The actual file remained the same:

```text
moved-demo.txt
```

Without a `moved` block, Terraform could interpret the rename as a resource deletion and creation.

---

## Problem Without a moved Block

After changing the resource address, Terraform plan showed:

```text
+ create
- destroy
```

This means Terraform would create the new resource address and destroy the old resource address.

This is not desirable when the actual infrastructure does not need to be recreated.

---

## moved Block

The following `moved` block was added:

```hcl
moved {
  from = local_file.old_name
  to   = local_file.new_name
}
```

This tells Terraform that:

```text
local_file.old_name
        ↓
local_file.new_name
```

is a resource address change rather than a completely new resource.

---

## Applying the moved Block

The configuration was applied using:

```powershell
terraform apply
```

After applying the configuration, Terraform updated the resource address in its state.

The actual file was not unnecessarily recreated.

---

## State Verification

Before applying the moved block, Terraform state contained:

```text
local_file.old_name
```

After applying the moved block, the state was verified again.

The final state contained:

```text
local_file.new_name
```

This confirmed that the resource address had been successfully moved.

---

## Final Plan Verification

The final Terraform plan was executed:

```powershell
terraform plan
```

Terraform reported:

```text
No changes. Your infrastructure matches the configuration.
```

This confirmed that the Terraform state and configuration were synchronized.

---

## Resource Address Flow

```text
Initial Configuration
        ↓
local_file.old_name
        ↓
Resource renamed
        ↓
local_file.new_name
        ↓
moved block
        ↓
Terraform state updated
        ↓
local_file.new_name
        ↓
No infrastructure recreation required
```

---

## moved Block Example

Final configuration:

```hcl
terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

resource "local_file" "new_name" {
  filename = "${path.module}/moved-demo.txt"
  content  = "Terraform moved block practical."
}

moved {
  from = local_file.old_name
  to   = local_file.new_name
}
```

---

## Important Concept

A `moved` block changes how Terraform associates an existing resource with its configuration address.

It is useful during Terraform configuration refactoring.

Instead of Terraform interpreting the change as:

```text
Destroy old resource
        ↓
Create new resource
```

the moved block tells Terraform:

```text
Existing resource
        ↓
Change resource address
        ↓
Keep the resource
```

---

## When to Use moved Blocks

`moved` blocks are useful when:

- Renaming a resource
- Refactoring Terraform configuration
- Moving resources between modules
- Changing resource addresses
- Maintaining existing infrastructure during configuration changes

---

## Screenshots

The practical contains the following screenshots:

1. `01-rename-without-moved.png` - Terraform plan showing the effect of renaming the resource before using a moved block
2. `02-moved-state-list.png` - Terraform state verification
3. `03-moved-block-apply.png` - Applying the moved block
4. `04-moved-state-final.png` - Final Terraform state showing the new resource address

---

## What I Learned

- Terraform `moved` blocks
- Terraform resource addresses
- Resource renaming
- Terraform state addresses
- Safe Terraform configuration refactoring
- Avoiding unnecessary resource recreation
- Moving resources in Terraform state
- State verification

---

## Conclusion

Day 20 demonstrated how Terraform `moved` blocks can safely handle resource address changes.

The resource was renamed from:

```text
local_file.old_name
```

to:

```text
local_file.new_name
```

The `moved` block allowed Terraform to understand that the existing resource had been renamed instead of treating it as a completely new resource.

This helps prevent unnecessary resource destruction and recreation during Terraform configuration refactoring.