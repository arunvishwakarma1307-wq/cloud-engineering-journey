# Day 3 - Terraform Commands

## Navigate to Day-03

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey\Terraform\Day-03"
```

---

## Initialize Terraform

```powershell
terraform init
```

Initializes the Terraform working directory and installs the required provider.

---

## Validate Configuration

```powershell
terraform validate
```

Checks whether the Terraform configuration is valid.

---

## Create Execution Plan

```powershell
terraform plan
```

Shows the resources Terraform plans to create, change, or destroy.

For this practical, Terraform planned three resources to be created.

**Screenshot:** `Screenshots/01-plan.png`

---

## Apply Configuration

```powershell
terraform apply
```

When prompted:

```text
yes
```

Creates the resources defined in the Terraform configuration.

**Screenshot:** `Screenshots/02-apply.png`

---

## Check Generated Files

```powershell
Get-ChildItem *.txt
```

Expected files:

```text
Arun.txt
DevOps.txt
Terraform.txt
```

---

## Check File Contents

```powershell
Get-Content .\Arun.txt
Get-Content .\DevOps.txt
Get-Content .\Terraform.txt
```

Expected output:

```text
Hello from Arun
Hello from DevOps
Hello from Terraform
```

---

## List Terraform State Resources

```powershell
terraform state list
```

Expected:

```text
local_file.names["Arun"]
local_file.names["DevOps"]
local_file.names["Terraform"]
```

This demonstrates that `for_each` created and tracked three separate resource instances.

**Screenshot:** `Screenshots/03-for-each-state.png`

---

## Inspect a Specific Resource

```powershell
terraform state show 'local_file.names["Arun"]'
```

Displays the details of the Arun resource stored in Terraform state.

---

## Open Terraform Console

```powershell
terraform console
```

Check the variable:

```text
var.names
```

Exit the console:

```text
exit
```

---

## Destroy Resources

```powershell
terraform destroy
```

When prompted:

```text
yes
```

Destroys all three Terraform-managed resources.

Expected:

```text
Destroy complete! Resources: 3 destroyed.
```

**Screenshot:** `Screenshots/04-destroy.png`

---

## Verify Generated Files Were Removed

```powershell
Get-ChildItem *.txt
```

No `.txt` files should remain after `terraform destroy`.

---

## Day-03 Workflow

```text
terraform init
terraform validate
terraform plan
terraform apply
terraform state list
terraform state show
terraform console
terraform destroy
```

---

## Screenshots

```text
Screenshots/
├── 01-plan.png
├── 02-apply.png
├── 03-for-each-state.png
└── 04-destroy.png
```
