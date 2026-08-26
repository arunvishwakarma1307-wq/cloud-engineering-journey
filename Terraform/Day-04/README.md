# Day 4 - Terraform Maps and for_each

## Map in Terraform

A Terraform map stores data as key-value pairs.

Example:

    variable "server_config" {
      description = "Server configuration details"
      type        = map(string)

      default = {
        application = "nginx"
        environment = "production"
        owner       = "Arun"
      }
    }

The map contains:

    application → nginx
    environment → production
    owner       → Arun

---

## for_each with a Map

Terraform can use a map directly with `for_each`.

    resource "local_file" "config" {
      for_each = var.server_config

      filename = "${path.module}/${each.key}.txt"
      content  = each.value
    }

Terraform creates one resource for every key-value pair.

---

## each.key

`each.key` represents the current map key.

Examples:

    application
    environment
    owner

---

## each.value

`each.value` represents the current map value.

Examples:

    nginx
    production
    Arun

---

## Resources Created

The configuration creates:

    application.txt
    environment.txt
    owner.txt

Contents:

    application.txt  → nginx
    environment.txt  → production
    owner.txt        → Arun

---

## Terraform State

Terraform tracks each map entry as a separate resource instance:

    local_file.config["application"]
    local_file.config["environment"]
    local_file.config["owner"]

This demonstrates how `for_each` works with a map.

---

## Map vs List

| Feature | List | Map |
|---|---|---|
| Structure | Ordered values | Key-value pairs |
| Access | Index | Key |
| Example | `["Arun", "DevOps"]` | `{owner = "Arun"}` |
| for_each | Usually requires `toset()` | Can use map directly |

---

## Day-04 Workflow

    Map variable
        ↓
    for_each
        ↓
    each.key + each.value
        ↓
    Multiple resources
        ↓
    Terraform state
        ↓
    terraform destroy

---

## Screenshots

1. [Terraform Plan](Screenshots/01-plan.png)
2. [Terraform Apply](Screenshots/02-apply.png)
3. [Terraform State List](Screenshots/03-state-list.png)
4. [Terraform Console - Map](Screenshots/04-map-console.png)
5. [Terraform Destroy](Screenshots/05-destroy.png)

---

## What I Learned

- Terraform Map data type
- Key-value pairs
- `for_each` with maps
- `each.key`
- `each.value`
- Multiple resource instances
- Terraform state addresses
- Difference between lists and maps
- Resource destruction