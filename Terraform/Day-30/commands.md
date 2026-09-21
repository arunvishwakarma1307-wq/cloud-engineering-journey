# Day 30 - Terraform Commands

## 1. Create Day-30 Directory

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey\Terraform"

New-Item -ItemType Directory "Day-30"

cd ".\Day-30"
```

Creates the Day-30 Terraform practical directory and enters it.

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

The Terraform configuration was created using the HashiCorp Local provider.

---

## 4. Initialize Terraform

```powershell
terraform init
```

Initializes Terraform, downloads the required Local provider, and creates the `.terraform.lock.hcl` file.

---

## 5. Inspect Initial Lock File

```powershell
Get-Content .\.terraform.lock.hcl
```

Displays the provider version, constraint, and checksum information stored in the lock file.

Screenshot:

`01-initial-lock-file.png`

---

## 6. Display Required Providers

```powershell
terraform providers
```

Displays the providers required by the Terraform configuration.

---

## 7. Manage Provider Lock Information

```powershell
terraform providers lock
```

Obtains and verifies provider checksum information and updates the provider lock file when required.

Screenshot:

`02-providers-lock.png`

---

## 8. Check Provider Version and Constraint

```powershell
Get-Content .\.terraform.lock.hcl | Select-String -Pattern 'version|constraints'
```

Displays the provider version and version constraint recorded in the lock file.

---

## 9. Change Provider Version Constraint

```powershell
notepad main.tf
```

The Local provider constraint was changed from:

```text
~> 2.5
```

to:

```text
~> 2.8
```

---

## 10. Reinitialize Terraform with Upgrade

```powershell
terraform init -upgrade
```

Reinitializes Terraform and allows provider selections to be reconsidered within the configured version constraint.

---

## 11. Update and Verify Lock File

```powershell
terraform providers lock
```

Updates and verifies the provider lock information after the provider constraint was changed.

The final lock information showed:

```text
version     = "2.9.1"
constraints = "~> 2.8"
```

Screenshot:

`03-updated-lock-constraint.png`

---

## 12. Validate Terraform Configuration

```powershell
terraform validate
```

Checks whether the Terraform configuration is valid.

Screenshot:

`04-terraform-validate.png`

---

## 13. Generate Terraform Plan

```powershell
terraform plan
```

Shows the infrastructure changes Terraform plans to make.

Expected:

```text
Plan: 1 to add, 0 to change, 0 to destroy.
```

No screenshot was taken for this step.

---

## 14. Apply Terraform Configuration

```powershell
terraform apply
```

Applies the Terraform configuration and creates the `local_file` resource.

Confirmation:

```text
yes
```

No screenshot was taken for this step.

---

## 15. Verify Created File

```powershell
Get-Content .\lock-demo.txt
```

Displays the contents of the Terraform-created file.

Expected:

```text
Terraform provider dependency locking demonstration.
```

Screenshot:

`05-final-resource-result.png`

---

## 16. Final Terraform Plan

```powershell
terraform plan
```

Checks whether any infrastructure changes are still pending.

Expected:

```text
No changes.
Your infrastructure matches the configuration.
```

Screenshot:

`06-final-no-changes.png`

---

## Important Observation

The provider constraint was changed from:

```text
~> 2.5
```

to:

```text
~> 2.8
```

The selected provider version remained:

```text
2.9.1
```

because it was compatible with the new `~> 2.8` constraint.

The lock file was verified with:

```text
version     = "2.9.1"
constraints = "~> 2.8"
```

## Screenshots

1. `01-initial-lock-file.png` - Initial Terraform provider lock file
2. `02-providers-lock.png` - Successful `terraform providers lock` validation
3. `03-updated-lock-constraint.png` - Updated provider version constraint in the lock file
4. `04-terraform-validate.png` - Successful Terraform configuration validation
5. `05-final-resource-result.png` - Verification of the created file
6. `06-final-no-changes.png` - Final Terraform plan showing no pending changes
