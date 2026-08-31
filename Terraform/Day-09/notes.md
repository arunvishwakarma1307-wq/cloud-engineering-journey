# Day 09 - Terraform count Meta-Argument

## 1. count Meta-Argument

The `count` meta-argument allows Terraform to create multiple instances of the same resource from a single resource block.

Example:

```hcl
resource "local_file" "example" {
  count = 3

  filename = "${path.module}/file-${count.index + 1}.txt"

  content = "This is Terraform file number ${count.index + 1}"
}
```

Terraform creates three instances of the resource.

---

## 2. count.index

`count.index` identifies the index of each resource instance.

The index starts from:

```text
0
```

For three instances:

```text
0
1
2
```

To create human-readable numbering starting from 1:

```hcl
count.index + 1
```

This can produce:

```text
file-1.txt
file-2.txt
file-3.txt
```

---

## 3. Using count with Variables

The number of resource instances can be controlled using a variable.

Example:

```hcl
variable "file_count" {
  type    = number
  default = 3
}
```

The resource can use:

```hcl
count = var.file_count
```

This allows the number of resources to be changed without modifying the resource block.

---

## 4. Variable Override

A variable value can be overridden from the command line.

Example:

```text
-var="file_count=5"
```

If the default value is 3 and the value is overridden to 5, Terraform creates five resource instances.

---

## 5. Resource Instances

When `count` is used, Terraform represents each resource instance with an index.

Example:

```text
local_file.example[0]
local_file.example[1]
local_file.example[2]
```

For five instances:

```text
local_file.example[0]
local_file.example[1]
local_file.example[2]
local_file.example[3]
local_file.example[4]
```

---

## 6. count vs Individual Resource Blocks

Without `count`, multiple resources would require separate resource blocks.

With `count`, one resource block can create multiple instances.

This makes configurations shorter and easier to manage when resources have similar configurations.

---

## Key Points

- `count` creates multiple instances of a resource.
- `count.index` provides the instance index.
- The index starts at `0`.
- `count` can use a variable.
- Command-line variable overrides can change the number of instances.
- Terraform tracks each counted resource instance separately in its state.