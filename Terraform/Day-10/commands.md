# Day 10 - Terraform Commands

## Navigate to Day-10

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey\Terraform\Day-10"
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

Expected resources:

```text
local_file.example["app.txt"]
local_file.example["db.txt"]
local_file.example["cache.txt"]
```

Expected:

```text
Plan: 3 to add, 0 to change, 0 to destroy.
```

Screenshot:

```text
Screenshots/01-for-each-plan.png
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
Get-ChildItem -Filter "*.txt"
```

Expected:

```text
app.txt
db.txt
cache.txt
```

Screenshot:

```text
Screenshots/02-for-each-files-created.png
```

---

## Check each.key and each.value Results

```powershell
Get-Content .\app.txt
Get-Content .\db.txt
Get-Content .\cache.txt
```

Expected:

```text
Application configuration
Database configuration
Cache configuration
```

Screenshot:

```text
Screenshots/03-for-each-key-value.png
```

---

## Check Terraform Output

```powershell
terraform output
```

Expected:

```text
created_files = {
  "app.txt" = "./app.txt"
  "cache.txt" = "./cache.txt"
  "db.txt" = "./db.txt"
}
```

Screenshot:

```text
Screenshots/04-for-each-output.png
```

---

## Check for_each Resource Instances

```powershell
terraform state list
```

Expected:

```text
local_file.example["app.txt"]
local_file.example["cache.txt"]
local_file.example["db.txt"]
```

Screenshot:

```text
Screenshots/05-for-each-state-list.png
```

---

## Final Plan Verification

```powershell
terraform plan
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

---

## Check .gitignore

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
git commit -m "Add Day-10 Terraform for_each meta-argument"
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

## Total Screenshots

```text
Total: 5 screenshots
```

```text
01-for-each-plan.png
02-for-each-files-created.png
03-for-each-key-value.png
04-for-each-output.png
05-for-each-state-list.png
```
```