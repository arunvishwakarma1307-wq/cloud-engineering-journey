# Day 06 - Terraform Commands

## Navigate to Day-06

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey\Terraform\Day-06"
```

---

## Create Existing File

```powershell
Set-Content .\existing.txt "This file already exists"
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

## Read Existing File with Data Source

```powershell
terraform plan
```

Reads the existing file through the Terraform Data Source and shows the output value.

Screenshot: `01-data-source-read.png`

---

## Apply Configuration

```powershell
terraform apply
```

Confirm with:

```text
yes
```

---

## Check Data Source Output

```powershell
terraform output -raw existing_file_content
```

Expected output:

```text
This file already exists
```

Screenshot: `03-output-file.png`

---

## Check Variable

```powershell
terraform console
```

Inside Terraform Console:

```text
var.file_name
```

Expected:

```text
"existing.txt"
```

Exit:

```text
exit
```

Screenshot: `02-variable-file-name.png`

---

## Terraform.tfvars

The variable value was provided using:

```hcl
file_name = "existing.txt"
```

Screenshot: `04-tfvars.png`

---

## Create Second Existing File

```powershell
Set-Content .\second.txt "This is the second existing file"
```

---

## Command-Line Variable Override

```powershell
terraform plan -var="file_name=second.txt"
terraform apply -var="file_name=second.txt"
```

Confirm with:

```text
yes
```

---

## Check Overridden Output

```powershell
terraform output -raw existing_file_content
```

Expected output:

```text
This is the second existing file
```

Screenshot: `05-cli-override.png`

---

## Day-06 Command Flow

```powershell
terraform init
terraform validate
terraform plan
terraform apply
terraform output
terraform console
terraform plan -var="file_name=second.txt"
terraform apply -var="file_name=second.txt"
terraform output -raw existing_file_content
```

---

## Git Cleanup

Before Git, check the status:

```powershell
git status
```

---

## .gitignore

Create `.gitignore` with:

```text
.terraform/
*.tfstate
*.tfstate.*
crash.log
crash.*.log
```

---

## Git Status

```powershell
git status --untracked-files=all
```

---

## Add Day-06 Files

```powershell
git add .
```

---

## Verify Staged Files

```powershell
git status
```

---

## Commit

```powershell
git commit -m "Add Day-06 Terraform data sources"
```

---

## Push

```powershell
git push
```

---

## Final Verification

```powershell
git status
```

Expected:

```text
Your branch is up to date with 'origin/main'.

working tree clean
```

---

## Screenshots

```text
01-data-source-read.png
02-variable-file-name.png
03-output-file.png
04-tfvars.png
05-cli-override.png
```

Total Screenshots: 5