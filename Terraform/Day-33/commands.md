# Day 33 - Terraform Commands

## 1. Create Day-33 Directory

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey\Terraform"
New-Item -ItemType Directory "Day-33"
cd ".\Day-33"
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

## 4. Initial Terraform Plan

```powershell
terraform plan
```

**Basic Explanation:** Reviews the complete configuration and shows the plan for all three resources.

**Screenshot:** `01-initial-plan.png`

## 5. Targeted Terraform Plan

```powershell
terraform plan -target="local_file.first"
```

**Basic Explanation:** Creates a plan focused specifically on the `local_file.first` resource.

**Screenshot:** `02-targeted-plan.png`

## 6. Targeted Apply

```powershell
terraform apply -target="local_file.first"
```

```text
yes
```

**Basic Explanation:** Creates only the targeted resource during this operation.

**Screenshot:** `03-targeted-apply.png`

## 7. Verify Targeted Resource

```powershell
Get-ChildItem *.txt
```

**Basic Explanation:** Verifies the files created after the targeted operation.

**Screenshot:** `04-targeted-resource-result.png`

## 8. Check Remaining Resources

```powershell
terraform plan
```

**Basic Explanation:** Shows the remaining resources that still need to be created after the targeted operation.

**Screenshot:** `05-remaining-resources-plan.png`

## 9. Create Remaining Resources

```powershell
terraform apply
```

```text
yes
```

**Screenshot:** `06-final-apply.png`

## 10. Final Verification

```powershell
terraform plan
```

**Basic Explanation:** Confirms that the complete Terraform configuration has no pending changes.

**Screenshot:** `07-final-no-changes.png`