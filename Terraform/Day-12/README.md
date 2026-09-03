# Day 12 - Terraform Lifecycle Meta-Argument

## Practical Overview

In this practical, I learned how Terraform controls the lifecycle of resources using the `lifecycle` meta-argument.

## Topics Covered

- Terraform `lifecycle` block
- `create_before_destroy`
- `prevent_destroy`
- `ignore_changes`
- Resource replacement
- Lifecycle behavior verification

## Practical Work

Created a `local_file` resource to understand Terraform resource lifecycle behavior.

### Create Before Destroy

The `create_before_destroy` lifecycle rule was used to control the replacement order of a resource.

```hcl
lifecycle {
  create_before_destroy = true
}
```

This tells Terraform to create the replacement resource before destroying the existing resource whenever replacement is required.

### Prevent Destroy

The `prevent_destroy` lifecycle rule was used to prevent Terraform from destroying a resource.

```hcl
lifecycle {
  prevent_destroy = true
}
```

When Terraform planned a resource replacement, the operation was blocked and Terraform displayed:

```text
Error: Instance cannot be destroyed
```

This confirmed that `prevent_destroy` was working correctly.

### Ignore Changes

The `ignore_changes` lifecycle rule was used to ignore changes to the resource content.

```hcl
lifecycle {
  ignore_changes = [
    content
  ]
}
```

After changing the content in the Terraform configuration, `terraform plan` returned:

```text
No changes. Your infrastructure matches the configuration.
```

This confirmed that Terraform was ignoring the specified attribute.

## Verification

The lifecycle behavior was verified using Terraform commands including:

```text
terraform apply
terraform plan
Get-ChildItem -Filter "*.txt"
```

The resource creation, replacement behavior, destroy protection, and ignored changes were successfully verified.

## Screenshots

1. `01-create-before-destroy-plan.png` - Create-before-destroy lifecycle configuration plan
2. `02-lifecycle-resource-created.png` - Lifecycle resource creation verification
3. `03-create-before-destroy-result.png` - Resource replacement result
4. `04-prevent-destroy.png` - Prevent-destroy protection verification
5. `05-ignore-changes.png` - Ignore-changes verification

## What I Learned

- How the Terraform `lifecycle` block works
- How `create_before_destroy` controls resource replacement
- How `prevent_destroy` protects resources from accidental destruction
- How `ignore_changes` ignores selected configuration changes
- How Terraform handles resource replacement
- How to verify lifecycle behavior using Terraform commands