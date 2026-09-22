# Day 31 - Terraform Resource Replacement

## Terraform Resource Replacement

Terraform normally tries to make the smallest possible changes to infrastructure when the configuration changes.

Sometimes an existing resource needs to be completely recreated instead of being updated.

Terraform provides the `-replace` option for this purpose.

Resource replacement means:

```text
Existing Resource
       ↓
Destroy
       ↓
Create New Resource
```

---

## Why Resource Replacement Is Used

Resource replacement can be useful when an existing resource needs to be recreated intentionally.

Common reasons include:

- A resource is in an unwanted state
- A resource needs to be recreated
- Testing resource recreation behavior
- Recovering from certain resource problems
- Forcing a fresh resource when an update is not sufficient

---

## Terraform `-replace`

The `-replace` option tells Terraform that a specific resource should be replaced.

The resource is identified using its Terraform resource address.

Example:

```text
local_file.replace_demo
```

The basic concept is:

```text
terraform plan -replace="resource.address"
```

Terraform then creates a plan that includes replacement of the selected resource.

---

## Replacement Behavior

When Terraform replaces a resource, the existing resource is destroyed and a new resource is created.

Conceptually:

```text
Existing Resource
       ↓
    Destroy
       ↓
     Create
```

This is different from a normal update where Terraform may modify the existing resource without destroying it.

---

## Replacement Plan

Before performing a replacement, Terraform can show the planned replacement.

A replacement plan allows the infrastructure change to be reviewed before execution.

Terraform may represent replacement using:

```text
-/+
```

This indicates that the existing resource will be destroyed and a new resource will be created.

---

## `terraform plan -replace`

The `terraform plan -replace` command creates a plan that intentionally replaces the specified resource.

Concept:

```text
Terraform Configuration
        ↓
Resource Address
        ↓
terraform plan -replace
        ↓
Replacement Plan
```

This provides an opportunity to review the replacement before applying it.

---

## `terraform apply -replace`

The `terraform apply -replace` command applies the configuration while forcing the specified resource to be replaced.

Concept:

```text
Replacement Plan
       ↓
terraform apply -replace
       ↓
Destroy Existing Resource
       ↓
Create New Resource
```

The replacement happens only for the resource specified by the `-replace` option.

---

## Resource Address

Terraform identifies resources using resource addresses.

For example:

```text
local_file.replace_demo
```

The first part represents the resource type:

```text
local_file
```

The second part represents the resource name:

```text
replace_demo
```

Together they form the resource address:

```text
local_file.replace_demo
```

---

## Replacement vs Normal Update

A normal Terraform change attempts to update an existing resource when possible.

A replacement completely recreates the resource.

### Normal Update

```text
Existing Resource
       ↓
     Update
       ↓
Updated Resource
```

### Replacement

```text
Existing Resource
       ↓
    Destroy
       ↓
  New Resource
```

---

## Replacement vs Create

Creating a resource means there is no existing resource managed by Terraform.

```text
No Resource
    ↓
Create
    ↓
New Resource
```

Replacement is different because a resource already exists.

```text
Existing Resource
       ↓
    Destroy
       ↓
     Create
```

---

## Resource Replacement and State

Terraform uses its state information to track resources.

When a resource is replaced, Terraform updates its state to represent the newly created resource.

The state therefore continues to track the current resource after replacement.

---

## Resource Replacement and Dependencies

A resource may have dependencies on other resources.

When a resource is replaced, Terraform considers its dependency relationships while determining the correct operation order.

This helps Terraform maintain the dependency structure of the infrastructure.

---

## Resource Replacement Safety

Resource replacement can cause downtime or data loss for some real infrastructure resources because the existing resource is destroyed before or as part of creating the replacement.

Therefore, replacement should be reviewed carefully before applying it.

Important considerations include:

- Resource dependencies
- Data stored in the resource
- Downtime
- Resource configuration
- Recovery requirements
- Production impact

---

## Real-World Use

Resource replacement can be useful in situations such as:

- Recreating damaged resources
- Testing infrastructure recovery
- Rebuilding specific infrastructure components
- Troubleshooting resource behavior
- Controlled infrastructure changes
- Development and testing environments

---

## Important Points

- Terraform normally tries to update resources when possible.
- `-replace` intentionally forces a resource replacement.
- `terraform plan -replace` previews the replacement.
- `terraform apply -replace` performs the replacement.
- Replacement means destroying the existing resource and creating a new one.
- A Terraform resource address identifies the resource to replace.
- Replacement can have downtime or data-loss risks for some resources.
- Replacement should be reviewed carefully before applying it.
- Terraform updates its state after the new resource is created.

---

## Key Terms

- Terraform Resource Replacement
- `-replace`
- `terraform plan -replace`
- `terraform apply -replace`
- Resource Address
- Destroy and Recreate
- Terraform State
- Resource Dependencies
- Infrastructure Replacement
- Controlled Resource Recreation