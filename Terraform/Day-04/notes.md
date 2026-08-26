# Day 4 - Terraform Maps and for_each Notes

## Map

A Terraform map stores data in key-value pairs.

Example:

application → nginx
environment → production
owner → Arun

A map variable can be declared as:

variable "server_config" {
  type = map(string)
}

---

## for_each

The for_each meta-argument creates multiple resource instances from a collection.

Example:

for_each = var.server_config

A map can be used directly with for_each.

---

## each.key

each.key represents the current key.

Example:

application
environment
owner

---

## each.value

each.value represents the value associated with the current key.

Example:

nginx
production
Arun

---

## Resource Instances

Terraform tracks each for_each instance separately.

Example:

local_file.config["application"]
local_file.config["environment"]
local_file.config["owner"]

---

## Map vs List

List:

["Arun", "DevOps", "Terraform"]

Map:

{
  owner = "Arun"
}

A list uses indexes to access values, while a map uses keys.

---

## Terraform Console

Terraform Console can be used to inspect variables and expressions.

Command:

terraform console

Example:

var.server_config["application"]

Result:

"nginx"

---

## Key Takeaways

- A map stores key-value pairs.
- for_each creates multiple resource instances.
- each.key represents the current key.
- each.value represents the current value.
- A map can be used directly with for_each.
- Terraform tracks each for_each instance separately.
- Terraform Console helps inspect variables and expressions.