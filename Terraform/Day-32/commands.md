# Day 32 - Terraform Commands

## 1. Create Day-32 Directory

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey\Terraform"
New-Item -ItemType Directory "Day-32"
cd ".\Day-32"
```

## 2. Create main.tf

```powershell
New-Item main.tf -ItemType File
notepad main.tf
```

## 3. Initialize Terraform

```powershell
terraform init
```

## 4. Create Initial Resource

```powershell
terraform apply
```

Confirmation:

```text
yes
```

**Basic Explanation:** Creates the Terraform-managed file for the practical.

**Screenshot:** `01-initial-apply.png`

## 5. Check Original File

```powershell
Get-Content .\drift-demo.txt
```

**Basic Explanation:** Verifies the original content created by Terraform.

**Screenshot:** `02-before-drift.png`

## 6. Create Manual Drift

```powershell
Set-Content .\drift-demo.txt "Manual change outside Terraform."
Get-Content .\drift-demo.txt
```

**Basic Explanation:** Changes the Terraform-managed file outside Terraform to simulate drift.

**Screenshot:** `03-manual-drift.png`

## 7. Detect Drift

```powershell
terraform plan
```

**Basic Explanation:** Checks the infrastructure and detects the change made outside Terraform.

**Screenshot:** `04-drift-detected-plan.png`

## 8. Refresh-Only Plan

```powershell
terraform plan -refresh-only
```

**Basic Explanation:** Reviews external changes and shows how Terraform state can be updated without modifying infrastructure.

**Screenshot:** `05-refresh-only-plan.png`

## 9. Apply Refresh-Only

```powershell
terraform apply -refresh-only
```

```text
yes
```

**Basic Explanation:** Updates Terraform state to reflect the current infrastructure without changing the actual infrastructure.

**Screenshot:** `06-refresh-only-apply.png`

## 10. Final Plan

```powershell
terraform plan
```

**Basic Explanation:** Performs the final check after the state refresh and shows the remaining difference between configuration and current state.

**Screenshot:** `07-final-drift-plan.png`