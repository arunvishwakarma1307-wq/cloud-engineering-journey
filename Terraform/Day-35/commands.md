# Day 35 - Terraform Commands

## 1. Create Day-35 Directory

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey\Terraform"
New-Item -ItemType Directory "Day-35"
cd ".\Day-35"
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

## 4. Generate Initial Terraform Plan

```powershell
terraform plan
```

Basic Explanation: Shows the Terraform changes planned for the configuration.

Screenshot: `01-initial-plan.png`

## 5. Save Terraform Plan

```powershell
terraform plan -out=tfplan
```

## 6. Convert Saved Plan to JSON

```powershell
terraform show -json tfplan > tfplan.json
```

## 7. Check JSON Plan File

```powershell
Get-Item .\tfplan.json
```

## 8. Load JSON Plan into PowerShell

```powershell
$plan = Get-Content .\tfplan.json -Raw | ConvertFrom-Json
```

## 9. Inspect Resource Address

```powershell
$plan.resource_changes.address
```

Basic Explanation: Displays the resource address contained in the Terraform JSON plan.

Screenshot: `02-json-resource-change.png`

## 10. Inspect Planned Action

```powershell
$plan.resource_changes.change.actions
```

Basic Explanation: Displays the action Terraform plans to perform on the resource.

Screenshot: `03-json-planned-action.png`

## 11. Inspect Resource Change Details

```powershell
$plan.resource_changes[0].change | Format-List
```

Basic Explanation: Displays the detailed change information for the planned resource.

Screenshot: `04-json-change-details.png`

## 12. Inspect Planned Filename

```powershell
$plan.resource_changes[0].change.after.filename
```

Basic Explanation: Retrieves the planned filename from the JSON plan.

Screenshot: `05-json-planned-filename.png`

## 13. Inspect Planned Content

```powershell
$plan.resource_changes[0].change.after.content
```

Basic Explanation: Retrieves the planned file content from the JSON plan.

Screenshot: `06-json-planned-content.png`

## 14. Display Saved Plan

```powershell
terraform show tfplan
```

Basic Explanation: Displays the saved Terraform plan in human-readable format.

Screenshot: `07-human-readable-plan.png`

## 15. Apply Saved Terraform Plan

```powershell
terraform apply tfplan
```

Basic Explanation: Applies the previously saved Terraform plan.

Screenshot: `08-apply-saved-plan.png`

## 16. Verify Created File

```powershell
Get-Content .\json-plan-demo.txt
```

## 17. Final Terraform Plan

```powershell
terraform plan
```