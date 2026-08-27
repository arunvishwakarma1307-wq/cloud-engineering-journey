# Day 5 - Terraform Modules Notes

## Terraform Module

A Terraform Module is a collection of Terraform configuration files that can be reused.

Modules help organize Terraform projects and reduce repeated configuration.

---

## Local Module

A local module can be stored inside the same Terraform project.

Example:

```hcl
module "file_creator" {
  source = "./modules/file_creator"
}
```

The `source` tells Terraform where the module is located.

---

## Module main.tf

The module contains the resources that Terraform should create.

Example:

```hcl
resource "local_file" "file" {
  filename = "${path.module}/${var.filename}"
  content  = var.message
}
```

The module uses variables instead of hard-coded values.

---

## Module variables.tf

Variables allow values to be passed into a module.

```hcl
variable "message" {
  type = string
}

variable "filename" {
  type = string
}
```

The root configuration can provide different values when calling the module.

---

## Module outputs.tf

Outputs allow a module to return information to the root configuration.

Example:

```hcl
output "file_path" {
  value = local_file.file.filename
}
```

The root module can access this value using:

```hcl
module.file_creator.file_path
```

---

## Root main.tf

The root `main.tf` calls the module.

The same module can be called multiple times with different names and inputs.

Example:

```hcl
module "file_creator_1" {
  source   = "./modules/file_creator"
  message  = "Hello from Module One"
  filename = "module-one.txt"
}

module "file_creator_2" {
  source   = "./modules/file_creator"
  message  = "Hello from Module Two"
  filename = "module-two.txt"
}
```

---

## Root outputs.tf

The root `outputs.tf` can collect and display values returned by modules.

Example:

```hcl
output "created_file_paths" {
  value = {
    module_one = module.file_creator_1.file_path
    module_two = module.file_creator_2.file_path
  }
}
```

---

## Reusable Modules

The main advantage of modules is reusability.

One module can be used multiple times with different inputs.

In this practical, the same `file_creator` module was used to create two different files.

---

## Important Module Concepts

- Module
- Local module
- Module source
- Module resource
- Module variables
- Module outputs
- Root module
- Root outputs
- Module reuse
- Multiple module instances