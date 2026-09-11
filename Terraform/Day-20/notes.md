# Day 20 - Terraform moved Blocks Notes

## What is a moved Block?

Terraform `moved` block is used to tell Terraform that an existing resource has moved from one resource address to another.

It is mainly useful when changing or refactoring Terraform configuration without wanting Terraform to destroy and recreate the existing resource.

---

## Terraform Resource Address

Every Terraform resource has an address.

Example:

```text
local_file.old_name
```

Here:

```text
local_file
```

is the resource type.

```text
old_name
```

is the resource name.

Together:

```text
local_file.old_name
```

is the Terraform resource address.

---

## Resource Renaming Problem

Suppose the original resource is:

```hcl
resource "local_file" "old_name" {
  filename = "${path.module}/moved-demo.txt"
  content  = "Terraform moved block practical."
}
```

Later, the resource name is changed to:

```hcl
resource "local_file" "new_name" {
  filename = "${path.module}/moved-demo.txt"
  content  = "Terraform moved block practical."
}
```

Terraform sees:

```text
local_file.old_name
```

and:

```text
local_file.new_name
```

as different resource addresses.

Without additional information, Terraform may plan to destroy the old resource and create the new resource.

---

## moved Block Syntax

The `moved` block tells Terraform about the resource address change.

```hcl
moved {
  from = local_file.old_name
  to   = local_file.new_name
}
```

This means:

```text
old address
    ↓
local_file.old_name
    ↓
local_file.new_name
    ↓
new address
```

---

## Why moved Blocks are Useful

`moved` blocks are useful during Terraform configuration refactoring.

They help preserve existing infrastructure when a resource address changes.

Instead of:

```text
Destroy
   ↓
Create
```

Terraform can understand:

```text
Existing resource
   ↓
New resource address
```

---

## State and moved Blocks

Terraform state stores information about managed resources.

Before the move:

```text
local_file.old_name
```

After applying the moved block:

```text
local_file.new_name
```

The resource address in the Terraform state is updated.

---

## Important Point

A `moved` block does not mean that a completely new infrastructure resource is created.

It tells Terraform how to map an existing resource address to a new address.

This is particularly important when managing real infrastructure.

---

## moved Blocks and Refactoring

Terraform configurations can become large as projects grow.

For example:

```text
Initial configuration
        ↓
Resource names change
        ↓
Modules are reorganized
        ↓
Resource addresses change
```

Using `moved` blocks allows these configuration changes to happen more safely.

---

## Practical Example

Initial resource:

```text
local_file.old_name
```

Resource after renaming:

```text
local_file.new_name
```

Moved block:

```hcl
moved {
  from = local_file.old_name
  to   = local_file.new_name
}
```

After applying:

```text
Terraform state
        ↓
local_file.new_name
```

---

## Verification

The resource address can be checked using:

```powershell
terraform state list
```

The final state showed:

```text
local_file.new_name
```

A final:

```powershell
terraform plan
```

reported:

```text
No changes. Your infrastructure matches the configuration.
```

This confirmed that the configuration and state were synchronized.

---

## Key Takeaways

- Every Terraform resource has a resource address.
- Renaming a resource changes its Terraform address.
- Terraform may otherwise interpret the rename as destroy and create.
- A `moved` block maps the old address to the new address.
- `terraform state list` can verify the resource address.
- `moved` blocks are useful for safe Terraform refactoring.
- They help avoid unnecessary infrastructure recreation.