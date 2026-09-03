# Day 12 - Terraform Lifecycle Meta-Argument

## Terraform Lifecycle

Terraform provides a `lifecycle` block to control how Terraform manages the creation, replacement, and destruction of resources.

The lifecycle block is written inside a resource:

    lifecycle {
      ...
    }

---

## create_before_destroy

`create_before_destroy` tells Terraform to create the replacement resource before destroying the existing resource.

Example:

    lifecycle {
      create_before_destroy = true
    }

This can help reduce downtime when a resource needs to be replaced.

Normal replacement can follow this general order:

    Destroy old resource
           ↓
    Create new resource

With `create_before_destroy`:

    Create new resource
           ↓
    Destroy old resource

---

## prevent_destroy

`prevent_destroy` prevents Terraform from destroying a resource.

Example:

    lifecycle {
      prevent_destroy = true
    }

When Terraform attempted to replace the resource, the operation was blocked with:

    Error: Instance cannot be destroyed

This feature can help protect important resources from accidental deletion.

---

## ignore_changes

`ignore_changes` tells Terraform to ignore changes to specified resource attributes.

Example:

    lifecycle {
      ignore_changes = [
        content
      ]
    }

In this practical, the `content` attribute was ignored.

When the content was changed in the Terraform configuration, the plan returned:

    No changes. Your infrastructure matches the configuration.

This confirmed that Terraform ignored the specified attribute.

---

## Lifecycle Rules Comparison

| Lifecycle Rule | Purpose |
|---|---|
| `create_before_destroy` | Creates replacement before destroying the old resource |
| `prevent_destroy` | Prevents a resource from being destroyed |
| `ignore_changes` | Ignores changes to selected resource attributes |

---

## Why Lifecycle Rules Matter

Lifecycle rules provide additional control over how Terraform manages resources.

They can be useful for:

- Reducing downtime during replacement
- Protecting important resources
- Ignoring changes managed outside Terraform
- Controlling resource replacement behavior

---

## Key Concepts

- Terraform lifecycle
- `lifecycle` block
- `create_before_destroy`
- `prevent_destroy`
- `ignore_changes`
- Resource replacement
- Resource protection
- Ignoring configuration changes