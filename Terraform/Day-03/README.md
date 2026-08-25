# Day 3 - Terraform Lists and for_each

## Lists in Terraform

A Terraform list is used to store multiple values of the same type.

In this practical, a list of names was created:

```hcl
variable "names" {
  description = "Names for the files"
  type        = list(string)

  default = [
    "Arun",
    "DevOps",
    "Terraform"
  ]
}
```

The list contains three values:

```text
Arun
DevOps
Terraform
```

---

## for_each

The `for_each` meta-argument allows Terraform to create multiple instances of a resource from a collection.

In this practical:

```hcl
resource "local_file" "names" {
  for_each = toset(var.names)

  filename = "${path.module}/${each.value}.txt"
  content  = "Hello from ${each.value}"
}
```

Terraform created three separate resources:

```text
local_file.names["Arun"]
local_file.names["DevOps"]
local_file.names["Terraform"]
```

---

## Generated Files

The Terraform configuration created:

```text
Arun.txt
DevOps.txt
Terraform.txt
```

Each file contained a message based on its name.

Example:

```text
Hello from Arun
```

---

## for_each Resource Flow

```text
variables.tf
     ↓
names list
     ↓
toset(var.names)
     ↓
for_each
     ↓
Multiple resources
     ↓
Arun.txt
DevOps.txt
Terraform.txt
```

---

## Terraform State

The resources created using `for_each` were visible in Terraform state:

```text
local_file.names["Arun"]
local_file.names["DevOps"]
local_file.names["Terraform"]
```

This demonstrates that Terraform tracks each `for_each` instance separately.

---

## Destroy

After testing the resources, `terraform destroy` was used to remove all three resources.

Result:

```text
Destroy complete! Resources: 3 destroyed.
```

---

## Screenshots

Practical screenshots:

1. [Terraform Plan](Screenshots/01-plan.png)
2. [Terraform Apply](Screenshots/02-apply.png)
3. [for_each State](Screenshots/03-for-each-state.png)
4. [Terraform Destroy](Screenshots/04-destroy.png)

---

## What I Learned

* Terraform lists
* List of strings
* `toset()`
* `for_each`
* `each.value`
* Multiple resource instances
* Terraform state with `for_each`
* Resource destruction
