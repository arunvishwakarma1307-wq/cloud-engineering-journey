# Day 31 - Terraform Commands

## 1. Create Day-31 Directory

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey\Terraform"

New-Item -ItemType Directory "Day-31"

cd ".\Day-31"
```

Creates the Day-31 Terraform practical directory and enters it.

---

## 2. Create main.tf

```powershell
New-Item main.tf -ItemType File
```

Creates the Terraform configuration file.

---

## 3. Open main.tf

```powershell
notepad main.tf
```

Opens the Terraform configuration file in Notepad.

---

## 4. Initialize Terraform

```powershell
terraform init
```

Initializes Terraform and downloads the required Local provider.

---

## 5. Generate Initial Terraform Plan

```powershell
terraform plan
```

Checks the initial Terraform configuration and shows the resource that will be created.

Expected:

```text
Plan: 1 to add, 0 to change, 0 to destroy.
```

No screenshot was taken for this step.

---

## 6. Create Initial Resource

```powershell
terraform apply
```

Creates the `local_file.replace_demo` resource.

Confirmation:

```text
yes
```

Screenshot:

`01-initial-apply.png`

---

## 7. Preview Resource Replacement

```powershell
terraform plan -replace="local_file.replace_demo"
```

Creates a plan that intentionally replaces the existing resource.

The plan shows the existing resource being destroyed and a new resource being created.

Screenshot:

`02-replace-plan.png`

---

## 8. Apply Resource Replacement

```powershell
terraform apply -replace="local_file.replace_demo"
```

Intentionally replaces the existing Terraform resource.

Confirmation:

```text
yes
```

Screenshot:

`03-replace-apply.png`

---

## 9. Verify Replaced Resource

```powershell
Get-Content .\replace-demo.txt
```

Displays the content of the recreated file.

Expected:

```text
Day 31 - Original resource.
```

---

```powershell
Get-Item .\replace-demo.txt
```

Displays information about the recreated file.

Screenshot:

`04-replacement-resource-result.png`

---

## 10. Final Terraform Plan

```powershell
terraform plan
```

Checks whether any infrastructure changes are still pending after the resource replacement.

Expected:

```text
No changes.
Your infrastructure matches the configuration.
```

Screenshot:

`05-final-no-changes.png`

---

## Screenshot Summary

```text
01-initial-apply.png
02-replace-plan.png
03-replace-apply.png
04-replacement-resource-result.png
05-final-no-changes.png
```