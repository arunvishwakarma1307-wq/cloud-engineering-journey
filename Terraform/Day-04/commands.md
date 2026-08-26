# Day 4 - Terraform Commands

## Navigate to Day-04

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey\Terraform\Day-04"
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

Screenshot: [01-plan.png](Screenshots/01-plan.png)

---

## Apply Configuration

```powershell
terraform apply
```

Confirm with:

```text
yes
```

Creates the resources defined in the Terraform configuration.

Screenshot: [02-apply.png](Screenshots/02-apply.png)

---

## Check Generated Files

```powershell
Get-ChildItem *.txt
```

Expected files:

```text
application.txt
environment.txt
owner.txt
```

---

## Check File Contents

```powershell
Get-Content .\application.txt
Get-Content .\environment.txt
Get-Content .\owner.txt
```

Expected output:

```text
nginx
production
Arun
```

---

## List Terraform State Resources

```powershell
terraform state list
```

Expected:

```text
local_file.config["application"]
local_file.config["environment"]
local_file.config["owner"]
```

Screenshot: [03-state-list.png](Screenshots/03-state-list.png)

---

## Inspect a Resource

```powershell
terraform state show 'local_file.config["application"]'
```

Displays the details of the selected resource.

---

## Open Terraform Console

```powershell
terraform console
```

Check the complete map:

```text
var.server_config
```

Check a specific value:

```text
var.server_config["application"]
```

Expected:

```text
"nginx"
```

Exit the console:

```text
exit
```

Screenshot: [04-map-console.png](Screenshots/04-map-console.png)

---

## Destroy Resources

```powershell
terraform destroy
```

Confirm with:

```text
yes
```

Removes all Terraform-managed resources.

Expected:

```text
Destroy complete! Resources: 3 destroyed.
```

Screenshot: [05-destroy.png](Screenshots/05-destroy.png)

---

## Verify Resources Were Removed

```powershell
Get-ChildItem *.txt
```

No generated .txt files should remain after terraform destroy.

---

## Day-04 Command Flow

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

├── 01-plan.png

├── 02-apply.png

├── 03-state-list.png

├── 04-map-console.png

└── 05-destroy.png

Total Screenshots: 5
