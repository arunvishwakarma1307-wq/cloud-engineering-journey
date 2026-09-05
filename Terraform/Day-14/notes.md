# Day 14 - Terraform Resource Import

## What is Terraform Resource Import?

Terraform Resource Import is the process of bringing an existing infrastructure resource under Terraform management.

Normally, Terraform creates resources from a configuration file and then stores information about those resources in the Terraform state.

However, sometimes a resource already exists outside Terraform.

For example:

```text
Existing Docker Container
        ↓
Created outside Terraform
        ↓
Terraform Import
        ↓
Terraform State
        ↓
Managed by Terraform
```

Import allows Terraform to recognize an existing resource without creating it again.

---

## Why Resource Import is Used

Resource import is useful when:

- Infrastructure already exists.
- A resource was created manually.
- Infrastructure was created using another tool.
- Existing infrastructure needs to be brought under Terraform management.
- An organization wants to gradually migrate existing infrastructure to Terraform.

---

## Terraform State

Terraform state keeps information about resources that Terraform manages.

After importing a resource, the resource is added to the Terraform state.

Example:

```text
docker_container.imported
```

The state allows Terraform to track the relationship between the Terraform configuration and the real infrastructure.

---

## Resource Import Workflow

The general import workflow is:

```text
1. Existing resource
        ↓
2. Terraform resource configuration
        ↓
3. Get resource ID
        ↓
4. terraform import
        ↓
5. Resource added to Terraform state
        ↓
6. terraform plan
        ↓
7. Compare configuration with real resource
```

---

## Docker Resource Import

In this practical, a Docker container was created outside Terraform.

The container used:

```text
nginx:alpine
```

and its name was:

```text
terraform-import-demo
```

The container was then imported into the Terraform resource:

```text
docker_container.imported
```

---

## Resource ID

Terraform import requires the resource ID supported by the provider.

For the Docker container, the full Docker container ID was used.

Example format:

```text
658eaee17270e5b605e051033030981fd8a638531f99523c2e2cc5e4f8941eee
```

Using the correct resource ID is important because Terraform uses it to locate the existing infrastructure object.

---

## Import Does Not Create the Resource

Terraform import does not create a new resource.

The existing resource is already present.

Import only tells Terraform:

```text
"This resource already exists. Start tracking it in Terraform state."
```

Therefore:

```text
Import ≠ Resource Creation
```

---

## Import and Terraform Configuration

Importing a resource does not automatically mean that the Terraform configuration perfectly describes every attribute of that resource.

After import, Terraform can compare:

```text
Terraform Configuration
        ↓
Terraform State
        ↓
Real Infrastructure
```

If the configuration does not match the existing resource, `terraform plan` can show changes.

---

## Terraform Plan After Import

In this practical, `terraform plan` detected differences between the minimal Terraform configuration and the imported Docker container.

Terraform planned:

```text
1 to add
0 to change
1 to destroy
```

This indicated that Terraform wanted to replace the resource based on the current configuration.

The plan was **not applied**.

This was important because applying the plan could have destroyed and recreated the existing container.

---

## Configuration Alignment

After importing an existing resource, the Terraform configuration should be adjusted to accurately represent the resource.

The goal is to reach a state where:

```text
Terraform Configuration
        =
Existing Infrastructure
```

When the configuration correctly represents the resource, Terraform can manage it without unnecessary changes.

---

## Removing a Resource from State

The following command was used:

```text
terraform state rm docker_container.imported
```

This removes the resource from Terraform state.

It does **not** delete the actual Docker container.

Therefore:

```text
terraform state rm
        ↓
Remove from Terraform tracking
        ↓
Docker container remains
```

---

## Infrastructure Deletion

The Docker container was deleted separately using:

```text
docker rm -f terraform-import-demo
```

This demonstrates the difference between:

### Terraform State Removal

```text
terraform state rm
```

Removes the resource from Terraform state.

### Actual Docker Deletion

```text
docker rm -f
```

Deletes the Docker container itself.

---

## Important Difference

| Operation | Terraform State | Real Infrastructure |
|---|---|---|
| `terraform import` | Adds resource | Resource already exists |
| `terraform state rm` | Removes tracking | Not deleted |
| `docker rm -f` | Terraform state unaffected | Container deleted |
| `terraform apply` | Updates state | Can create/change/destroy infrastructure |

---

## Key Points

- Terraform can import existing infrastructure.
- Import requires a provider-supported resource ID.
- Import adds an existing resource to Terraform state.
- Import does not create a new resource.
- Terraform configuration should match the imported resource.
- `terraform plan` should be checked after import.
- A plan showing replacement should not be blindly applied.
- `terraform state rm` removes Terraform tracking without deleting the real resource.
- Actual infrastructure can be removed separately.