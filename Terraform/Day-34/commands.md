# Day 34 - Terraform Commands

## 1. Create Day-34 Directory

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey\Terraform"
New-Item -ItemType Directory "Day-34"
cd ".\Day-34"
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

## 4. Generate Provider Schema

```powershell
terraform providers schema -json > schema.json
```

## 5. Check Schema File

```powershell
Get-Item .\schema.json
```

## 6. Inspect Local File Resource Schema

```powershell
Get-Content .\schema.json | Select-String '"local_file"'
```

## 7. Load Provider Schema

```powershell
$schema = Get-Content .\schema.json -Raw | ConvertFrom-Json
```

## 8. Inspect Local File Attributes

```powershell
$schema.provider_schemas.'registry.terraform.io/hashicorp/local'.resource_schemas.local_file.block.attributes.PSObject.Properties.Name
```

Basic Explanation: Displays the available attributes of the `local_file` resource.

Screenshot: `01-local-file-schema.png`

## 9. Inspect Filename Attribute

```powershell
$schema.provider_schemas.'registry.terraform.io/hashicorp/local'.resource_schemas.local_file.block.attributes.filename
```

Basic Explanation: Shows the data type and schema information for the `filename` attribute.

Screenshot: `02-filename-schema.png`

## 10. Inspect Content Attribute

```powershell
$schema.provider_schemas.'registry.terraform.io/hashicorp/local'.resource_schemas.local_file.block.attributes.content
```

Basic Explanation: Shows the data type and schema information for the `content` attribute.

Screenshot: `03-content-schema.png`

## 11. List Provider Resources

```powershell
$schema.provider_schemas.'registry.terraform.io/hashicorp/local'.resource_schemas.PSObject.Properties.Name
```

Basic Explanation: Displays the resources available in the Local provider.

Screenshot: `04-provider-resources.png`

## 12. List Provider Data Sources

```powershell
$schema.provider_schemas.'registry.terraform.io/hashicorp/local'.data_source_schemas.PSObject.Properties.Name
```

Basic Explanation: Displays the data sources available in the Local provider.

Screenshot: `05-provider-data-sources.png`

## 13. Validate Provider Schema

```powershell
terraform providers schema -json | Out-Null
Write-Host "Provider schema generated successfully."
```

Basic Explanation: Confirms that Terraform can successfully generate the provider schema.

Screenshot: `06-schema-validation.png`

## 14. Generate Terraform Plan

```powershell
terraform plan
```

Basic Explanation: Shows the changes Terraform plans to make before creating the resource.

Screenshot: `07-final-plan.png`

## 15. Apply Terraform Configuration

```powershell
terraform apply
```

```text
yes
```

Screenshot: `08-final-apply.png`

## 16. Verify Created File

```powershell
Get-Content .\schema-demo.txt
```

Basic Explanation: Displays the content of the file created by Terraform.

Screenshot: `09-final-resource-result.png`

## 17. Final Terraform Plan

```powershell
terraform plan
```

Basic Explanation: Confirms that there are no remaining changes after the resource has been created.

Screenshot: `10-final-no-changes.png`