# Day 08 - Terraform Conditional Expressions & Functions Commands

## Navigate to Day-08

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey\Terraform\Day-08"
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

## Create locals.tf

```powershell
New-Item .\locals.tf -ItemType File
```

---

## Create main.tf

```powershell
New-Item .\main.tf -ItemType File
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

## Apply with Default Environment

```powershell
terraform apply
```

Confirm:

```text
yes
```

Check the conditional result:

```powershell
Get-Content .\environment.txt
```

Expected:

```text
Non-Production Environment
```

Screenshot:

```text
01-conditional-dev.png
```

---

## Apply with Production Environment

```powershell
terraform apply -var="environment=prod"
```

Confirm:

```text
yes
```

Check result:

```powershell
Get-Content .\environment.txt
```

Expected:

```text
Production Environment
```

Screenshot:

```text
02-conditional-prod.png
```

---

## Terraform Console

Open console:

```powershell
terraform console
```

Test `upper()`:

```text
upper("terraform")
```

Test `lower()`:

```text
lower("CLOUD ENGINEERING")
```

Test `length()`:

```text
length("terraform")
```

Exit:

```text
exit
```

Screenshot:

```text
03-terraform-functions.png
```

---

## Test join()

Open console:

```powershell
terraform console
```

Run:

```text
join("-", ["terraform", "day", "08"])
```

Exit:

```text
exit
```

Screenshot:

```text
04-join-function.png
```

---

## Apply Combined Locals and Functions

```powershell
terraform apply -var="environment=prod"
```

Confirm:

```text
yes
```

---

## Check Outputs

```powershell
terraform output
```

Expected values:

```text
environment_message     = "Production Environment"
project_label           = "terraform-day-08"
uppercase_environment   = "PROD"
```

Screenshot:

```text
05-combined-functions-output.png
```

---

## Final Verification

```powershell
terraform plan -var="environment=prod"
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
git commit -m "Add Day-08 Terraform conditionals and functions"
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
terraform apply
terraform apply -var="environment=prod"
terraform console
terraform output
terraform plan -var="environment=prod"
git add .
git commit -m "Add Day-08 Terraform conditionals and functions"
git push
```