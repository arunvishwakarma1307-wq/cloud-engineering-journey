# Day 5 - Terraform Modules

## What is a Terraform Module?

A Terraform Module is a reusable collection of Terraform configuration files.

Modules help organize Terraform code and allow the same configuration to be reused with different inputs.

---

## Day-05 Folder Structure

```text
Day-05/
├── modules/
│   └── file_creator/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
├── main.tf
├── outputs.tf
├── README.md
├── notes.md
├── commands.md
└── Screenshots/
```

---

## Practical 1 - Create a Local Module

Created the following module directory:

```text
modules/file_creator/
```

Created the module `main.tf` file.

The module initially contained a `local_file` resource that created `output.txt`.

```hcl
resource "local_file" "file" {
  filename = "${path.module}/output.txt"
  content  = "Hello from Terraform Module"
}
```

Created the root `main.tf` and called the local module using:

```hcl
module "file_creator" {
  source = "./modules/file_creator"
}
```

After creating the module configuration, Terraform was initialized, validated, planned, and applied successfully.

**Screenshot:** [01-init-module.png](Screenshots/01-init-module.png)

---

## Practical 2 - Module Variables

Created:

```text
modules/file_creator/variables.tf
```

Added a `message` variable and later added a `filename` variable.

```hcl
variable "message" {
  type = string
}

variable "filename" {
  type = string
}
```

Updated the module `main.tf` to use these variables:

```hcl
resource "local_file" "file" {
  filename = "${path.module}/${var.filename}"
  content  = var.message
}
```

The root `main.tf` was updated to pass values to the module.

The module was then validated, planned, and applied successfully.

**Screenshot:** [02-plan-module.png](Screenshots/02-plan-module.png)

---

## Practical 3 - Module Outputs

Created:

```text
modules/file_creator/outputs.tf
```

Added an output to return the created file path:

```hcl
output "file_path" {
  value = local_file.file.filename
}
```

Created the root:

```text
outputs.tf
```

and used the module output:

```hcl
output "created_file_paths" {
  value = {
    module_one = module.file_creator_1.file_path
    module_two = module.file_creator_2.file_path
  }
}
```

After applying the configuration, the module output was checked using:

```powershell
terraform output
```

The output successfully displayed the created file paths.

**Screenshot:** [03-output-module.png](Screenshots/03-output-module.png)

---

## Practical 4 - Reusable Module

The same `file_creator` module was called twice from the root `main.tf`.

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

This demonstrated that the same module can be reused with different inputs.

The module created:

```text
module-one.txt
module-two.txt
```

The contents were verified successfully:

```text
Hello from Module One
Hello from Module Two
```

**Screenshot:** [04-reusable-module.png](Screenshots/04-reusable-module.png)

---

## Terraform Cleanup

After completing the practicals, Terraform resources were removed using:

```powershell
terraform destroy
```

The cleanup completed successfully.

**Screenshot:** [05-destroy-module.png](Screenshots/05-destroy-module.png)

---

## What I Learned

- Terraform Modules
- Local Modules
- Module source
- Module variables
- Passing values to modules
- Module outputs
- Root module outputs
- Reusable modules
- Multiple module instances
- Terraform state with modules
- Terraform module lifecycle

---

## Screenshots

├── 01-init-module.png

├── 02-plan-module.png

├── 03-output-module.png

├── 04-reusable-module.png

└── 05-destroy-module.png

Total Screenshots: 5