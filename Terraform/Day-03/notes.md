# Day 3 - Terraform Lists and for_each Notes

## Terraform List

A list stores multiple values in an ordered collection.

Example:

```hcl
names = [
  "Arun",
  "DevOps",
  "Terraform"
]
```

The list contains three string values.

---

## List Variable

A list variable can be declared using:

```hcl
variable "names" {
  type = list(string)
}
```

`list(string)` means the variable contains a list whose elements are strings.

---

## toset()

`toset()` converts a list into a set.

Example:

```hcl
toset(var.names)
```

A set is useful with `for_each` when each value should represent a separate resource instance.

---

## for_each

`for_each` creates one resource instance for every item in a collection.

Example:

```hcl
resource "local_file" "names" {
  for_each = toset(var.names)

  filename = "${path.module}/${each.value}.txt"
  content  = "Hello from ${each.value}"
}
```

For three values, Terraform creates three resource instances.

---

## each.value

Inside a `for_each` resource, `each.value` represents the current collection value.

For example:

```text
Arun       → each.value = "Arun"
DevOps     → each.value = "DevOps"
Terraform  → each.value = "Terraform"
```

---

## Resource Instances

Terraform state showed:

```text
local_file.names["Arun"]
local_file.names["DevOps"]
local_file.names["Terraform"]
```

Each instance is tracked separately.

---

## for_each vs Normal Resource

Without `for_each`:

```text
One resource block
      ↓
One resource
```

With `for_each`:

```text
One resource block
      ↓
Multiple resource instances
```

---

## Important Concept

`for_each` is useful when the same type of resource needs to be created multiple times using different values.

Examples in real infrastructure can include:

* Multiple IAM users
* Multiple buckets
* Multiple security rules
* Multiple DNS records
* Multiple similar resources

---

## Terraform State

Terraform state keeps track of resources created by Terraform.

For `for_each`, each instance gets its own address.

Example:

```text
local_file.names["Arun"]
```

Here:

```text
local_file.names → resource
"Arun"           → for_each instance key
```

---

## Git Ignore

Terraform-generated files should not normally be committed to Git.

Day-03 ignores:

```text
.terraform/
*.tfstate
*.tfstate.*
crash.log
crash.*.log
*.txt
```

The `.terraform.lock.hcl` file is intentionally not ignored because it records the selected provider versions and should normally be committed.
