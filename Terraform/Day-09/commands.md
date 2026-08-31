# Day 09 - Terraform Commands

## Navigate to Day-09

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey\Terraform\Day-09"
```

---

## Check Files

```powershell
Get-ChildItem
```

---

## Create variables.tf

```powershell
New-Item .\variables.tf -ItemType File
```

---

## Create main.tf

```powershell
New-Item .\main.tf -ItemType File
```

---

## Create outputs.tf

```powershell
New-Item .\outputs.tf -ItemType File
```

---

## Terraform Initialization

```powershell
terraform init
```

---

## Validate Configuration

```powershell
terraform validate
```

---

## Create Terraform Plan

```powershell
terraform plan
```

The plan showed:

```text
local_file.example[0]
local_file.example[1]
local_file.example[2]
```

Expected:

```text
Plan: 3 to add, 0 to change, 0 to destroy.
```

Screenshot:

```text
Screenshots/01-count-plan.png
```

---

## Apply Configuration

```powershell
terraform apply
```

Confirm:

```text
yes
```

---

## Check Created Files

```powershell
Get-ChildItem -Filter "file-*.txt"
```

Expected:

```text
file-1.txt
file-2.txt
file-3.txt
```

Screenshot:

```text
Screenshots/02-count-files-created.png
```

---

## Check count.index Results

```powershell
Get-Content .\file-1.txt
Get-Content .\file-2.txt
Get-Content .\file-3.txt
```

Expected:

```text
This is Terraform file number 1
This is Terraform file number 2
This is Terraform file number 3
```

Screenshot:

```text
Screenshots/03-count-index-results.png
```

---

## Check Terraform Output

```powershell
terraform output
```

Expected:

```text
created_files = [
  "./file-1.txt",
  "./file-2.txt",
  "./file-3.txt",
]
```

Screenshot:

```text
Screenshots/04-count-output.png
```

---

## Change Resource Count

Override the variable and create five files:

```powershell
terraform apply -var="file_count=5"
```

Confirm:

```text
yes
```

Check files:

```powershell
Get-ChildItem -Filter "file-*.txt"
```

Expected:

```text
file-1.txt
file-2.txt
file-3.txt
file-4.txt
file-5.txt
```

Screenshot:

```text
Screenshots/05-count-variable-scaling.png
```

---

## Check Terraform State Instances

```powershell
terraform state list
```

Expected:

```text
local_file.example[0]
local_file.example[1]
local_file.example[2]
local_file.example[3]
local_file.example[4]
```

Screenshot:

```text
Screenshots/06-count-state-list.png
```

---

## Final Plan Verification

```powershell
terraform plan -var="file_count=5"
```

Expected:

```text
No changes. Your infrastructure matches the configuration.
```

No screenshot required.

---

## Create .gitignore

```powershell
@"
.terraform/
*.tfstate
*.tfstate.*
crash.log
crash.*.log
"@ | Set-Content .gitignore
```

Check:

```powershell
Get-Content .gitignore
```

---

## Git Status

```powershell
git status --untracked-files=all
```

---

## Add Files

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
git commit -m "Add Day-09 Terraform count meta-argument"
```

---

## Push

```powershell
git push
```

---

## Final Git Check

```powershell
git status
```

Expected:

```text
Your branch is up to date with 'origin/main'.
working tree clean
```

---

## Main Commands Used

```powershell
terraform init
terraform validate
terraform plan
terraform apply
terraform apply -var="file_count=5"
terraform output
terraform state list
terraform plan -var="file_count=5"
git add .
git commit -m "Add Day-09 Terraform count meta-argument"
git push
```