# Day 07 - Terraform Commands

## Navigate to Day-07

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey\Terraform\Day-07"
```

---

## Check Day-07 Files

```powershell
Get-ChildItem
```

---

## Initialize Terraform

After creating the Terraform configuration, initialize the working directory:

```powershell
terraform init
```

---

## Validate Configuration

Check that the Terraform configuration is valid:

```powershell
terraform validate
```

Expected:

```text
Success! The configuration is valid.
```

---

## Create Execution Plan

After configuring Local Values and the `local_file` resource:

```powershell
terraform plan
```

The plan should show:

```text
local_file.example
```

and:

```text
Plan: 1 to add, 0 to change, 0 to destroy.
```

Screenshot:

```text
Screenshots/01-locals-plan.png
```

---

## Apply Configuration

Create the resource:

```powershell
terraform apply
```

Confirm with:

```text
yes
```

The `local-output.txt` file is created.

---

## Check Local Values Result

Read the generated file:

```powershell
Get-Content .\local-output.txt
```

Initial result:

```text
terraform-day-07 - learning - Hello from Terraform Locals
```

Screenshot:

```text
Screenshots/02-local-values-result.png
```

---

## Check Terraform Outputs

Display the Local Values through Terraform outputs:

```powershell
terraform output
```

Expected outputs include:

```text
environment  = "learning"
file_content = "Hello from Terraform Locals"
project_name = "terraform-day-07"
```

Screenshot:

```text
Screenshots/03-local-outputs.png
```

---

## Open Terraform Console

Start Terraform Console:

```powershell
terraform console
```

Test Local Values:

```text
local.project_name
local.environment
local.file_message
```

Expected:

```text
"terraform-day-07"
"learning"
"Hello from Terraform Locals"
```

Exit:

```text
exit
```

Screenshot:

```text
Screenshots/04-local-expressions-console.png
```

---

## Add Derived Local Expression

In `locals.tf`, the following derived Local Value was added:

```hcl
project_info = "${local.project_name}-${local.environment}"
```

The `local_file` resource was updated to use:

```hcl
content = "${local.project_info} - ${local.file_message}"
```

---

## Apply Updated Configuration

First check the change:

```powershell
terraform plan
```

Then apply it:

```powershell
terraform apply
```

Confirm with:

```text
yes
```

---

## Verify Derived Expression

Read the updated file:

```powershell
Get-Content .\local-output.txt
```

Expected:

```text
terraform-day-07-learning - Hello from Terraform Locals
```

Screenshot:

```text
Screenshots/05-derived-local-expression.png
```

---

## Final Verification

Check that there are no pending changes:

```powershell
terraform plan
```

Expected:

```text
No changes. Your infrastructure matches the configuration.
```

This screenshot is not required because the practical screenshots already demonstrate the important concepts.

---

## Create .gitignore

Create `.gitignore`:

```powershell
@"
.terraform/
*.tfstate
*.tfstate.*
crash.log
crash.*.log
"@ | Set-Content .gitignore
```

Check it:

```powershell
Get-Content .gitignore
```

Expected:

```text
.terraform/
*.tfstate
*.tfstate.*
crash.log
crash.*.log
```

---

## Git Status

Check which files will be added:

```powershell
git status --untracked-files=all
```

Terraform state files should be ignored.

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
git commit -m "Add Day-07 Terraform locals and expressions"
```

---

## Push

```powershell
git push
```

---

## Final Git Verification

```powershell
git status
```

Expected:

```text
Your branch is up to date with 'origin/main'.
working tree clean
```

---

## Day-07 Screenshot List

```text
01-locals-plan.png
02-local-values-result.png
03-local-outputs.png
04-local-expressions-console.png
05-derived-local-expression.png
```

Total Screenshots: 5