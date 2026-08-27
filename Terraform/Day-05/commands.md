# Day 5 - Terraform Commands

## Navigate to Day-05

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey\Terraform\Day-05"
```

---

## Practical 1 - Initialize the Local Module

After creating the `modules/file_creator` directory, the module configuration and root `main.tf` were created.

Then Terraform was initialized:

```powershell
terraform init
```

Terraform detected the local module and installed the required provider.

**Screenshot:** [01-init-module.png](Screenshots/01-init-module.png)

---

## Validate Configuration

After creating the module configuration:

```powershell
terraform validate
```

This checks whether the Terraform configuration is valid.

---

## Create Execution Plan

```powershell
terraform plan
```

This shows the resources Terraform plans to create, change, or destroy.

---

## Practical 2 - Apply Module Variables

The module was updated with:

```text
modules/file_creator/variables.tf
```

The module `main.tf` was updated to use:

```hcl
var.message
var.filename
```

The root `main.tf` was updated to pass values to the module.

The configuration was then validated and planned.

```powershell
terraform validate
terraform plan
```

**Screenshot:** [02-plan-module.png](Screenshots/02-plan-module.png)

---

## Apply Configuration

```powershell
terraform apply
```

Confirm with:

```text
yes
```

This applies the module configuration.

---

## Practical 3 - Module Outputs

Created:

```text
modules/file_creator/outputs.tf
```

and root:

```text
outputs.tf
```

The module output was checked using:

```powershell
terraform output
```

This displayed the file paths returned by the modules.

**Screenshot:** [03-output-module.png](Screenshots/03-output-module.png)

---

## Practical 4 - Reusable Module

The root `main.tf` was updated to call the same module twice:

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

The generated files were checked using:

```powershell
Get-Content .\modules\file_creator\module-one.txt
Get-Content .\modules\file_creator\module-two.txt
```

Expected:

```text
Hello from Module One
Hello from Module Two
```

**Screenshot:** [04-reusable-module.png](Screenshots/04-reusable-module.png)

---

## Check Terraform State

```powershell
terraform state list
```

This displays the resources managed by Terraform modules.

---

## Destroy Resources

After completing all practicals:

```powershell
terraform destroy
```

Confirm with:

```text
yes
```

This removes the Terraform-managed resources.

**Screenshot:** [05-destroy-module.png](Screenshots/05-destroy-module.png)

---

## Verify Cleanup

```powershell
Get-ChildItem .\modules\file_creator\*.txt
```

No generated `.txt` files should remain after `terraform destroy`.

---

## Day-05 Command Flow

```text
terraform init
terraform validate
terraform plan
terraform apply
terraform output
terraform state list
terraform destroy
```

---

## Screenshots

├── 01-init-module.png

├── 02-plan-module.png

├── 03-output-module.png

├── 04-reusable-module.png

└── 05-destroy-module.png

Total Screenshots: 5