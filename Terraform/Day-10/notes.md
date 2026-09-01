# Day 10 - Terraform for_each Meta-Argument

## 1. for_each Meta-Argument

The `for_each` meta-argument allows Terraform to create multiple instances of a resource by iterating over a collection such as a map or set.

Example:

```hcl
resource "local_file" "example" {
  for_each = var.files

  filename = "${path.module}/${each.key}"
  content  = each.value
}
```

Terraform creates one resource instance for each entry in the collection.

---

## 2. Map with for_each

A map contains key-value pairs.

Example:

```hcl
variable "files" {
  type = map(string)

  default = {
    "app.txt"   = "Application configuration"
    "db.txt"    = "Database configuration"
    "cache.txt" = "Cache configuration"
  }
}
```

In this example:

```text
Key       → File name
Value     → File content
```

---

## 3. each.key

`each.key` represents the key of the current item being processed by `for_each`.

Example:

```hcl
filename = "${path.module}/${each.key}"
```

For the map above, the keys are:

```text
app.txt
db.txt
cache.txt
```

Therefore, Terraform creates files with those names.

---

## 4. each.value

`each.value` represents the value associated with the current key.

Example:

```hcl
content = each.value
```

The values are:

```text
Application configuration
Database configuration
Cache configuration
```

These values become the contents of the corresponding files.

---

## 5. Resource Instances with for_each

Terraform identifies `for_each` resource instances using their keys.

Example:

```text
local_file.example["app.txt"]
local_file.example["cache.txt"]
local_file.example["db.txt"]
```

Unlike `count`, which uses numeric indexes such as:

```text
local_file.example[0]
local_file.example[1]
```

`for_each` uses meaningful keys.

---

## 6. for_each and Dynamic Resource Creation

With `for_each`, one resource block can create multiple resources based on the items in a collection.

For example, one resource block can create:

```text
app.txt
db.txt
cache.txt
```

This makes the configuration easier to manage when resources have unique keys and values.

---

## 7. for_each vs count

| Feature | count | for_each |
|---|---|---|
| Collection | Number | Map or Set |
| Resource identifier | Numeric index | Key |
| Example | `[0]`, `[1]` | `["app.txt"]` |
| Best suited for | Similar instances | Individually identifiable instances |
| Access | `count.index` | `each.key`, `each.value` |

---

## Key Points

- `for_each` creates multiple resource instances from a collection.
- Maps contain key-value pairs.
- `each.key` represents the current map key.
- `each.value` represents the current map value.
- `for_each` uses meaningful keys to identify resource instances.
- `for_each` is useful when each resource needs its own identifiable key and value.
- Terraform tracks each `for_each` instance separately in the state.