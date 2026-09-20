# Day 29 - Terraform Commands

## 1. Create Day-29 Directory

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey\Terraform"

New-Item -ItemType Directory "Day-29"

cd ".\Day-29"
```

Creates the Day-29 Terraform practical directory and enters it.

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

The configuration was intentionally written with incorrect formatting to demonstrate `terraform fmt`.

---

## 4. Check Terraform Formatting

```powershell
terraform fmt -check
```

Checks whether the Terraform configuration follows Terraform's standard formatting.

The initial check detected that `main.tf` required formatting.

No screenshot was taken for the initial formatting check.

---

## 5. Format Terraform Configuration

```powershell
terraform fmt
```

Automatically formats the Terraform configuration according to Terraform's standard formatting style.

---

## 6. Verify Formatting

```powershell
terraform fmt -check; if ($LASTEXITCODE -eq 0) { Write-Host "Terraform formatting check passed." }
```

Checks the formatting again and displays a confirmation message when the formatting check passes.

Screenshot:

`01-fmt-check-success.png`

---

## 7. Display Formatted Configuration

```powershell
Get-Content .\main.tf
```

Displays the formatted Terraform configuration.

Screenshot:

`02-formatted-main-tf.png`

---

## 8. Initialize Terraform

```powershell
terraform init
```

Initializes the Terraform working directory and installs the required Local provider.

This command was required before validation because the Local provider was not initially available.

No screenshot was taken for this step.

---

## 9. Validate Terraform Configuration

```powershell
terraform validate
```

Checks whether the Terraform configuration is syntactically valid and internally consistent.

Expected result:

```text
Success! The configuration is valid.
```

Screenshot:

`03-terraform-validate.png`

---

## Error Encountered

The first `terraform validate` attempt failed because the required Local provider had not been initialized in the Day-29 directory.

Error:

```text
Error: Missing required provider
```

Terraform suggested running:

```powershell
terraform init
```

After running `terraform init`, `terraform validate` completed successfully.

No screenshot was taken for the error.

## Screenshots

1. `01-fmt-check-success.png` - Successful Terraform formatting check
2. `02-formatted-main-tf.png` - Formatted Terraform configuration
3. `03-terraform-validate.png` - Successful Terraform configuration validation
