# Day 28 - Terraform Commands

## 1. Initialize Terraform

```powershell
terraform init
```

Initializes the Terraform working directory and downloads the required provider.

---

## 2. Generate Normal Terraform Plan

```powershell
terraform plan
```

Shows the changes Terraform plans to make without applying them.

---

## 3. Save Terraform Plan

```powershell
terraform plan -out=tfplan
```

Generates the Terraform plan and saves it into the `tfplan` file.

The saved plan can be reviewed and applied later.

---

## 4. Inspect Saved Plan

```powershell
terraform show tfplan
```

Displays the saved Terraform plan in a human-readable format.

Screenshot:

`01-saved-plan-show.png`

---

## 5. Apply Saved Plan

```powershell
terraform apply tfplan
```

Applies the previously saved Terraform plan.

Screenshot:

`02-saved-plan-apply.png`

---

## 6. Verify Created File

```powershell
Get-Content .\plan-demo.txt
```

Displays the contents of the Terraform-created file.

Expected:

```text
Terraform saved plan demonstration.
```

---

## 7. Check Terraform Output

```powershell
terraform output
```

Displays the output value showing the created file path.

Expected:

```text
created_file = "./plan-demo.txt"
```

Screenshot:

`03-final-saved-plan-result.png`

---

## 8. Final Plan Verification

```powershell
terraform plan
```

Checks whether any changes are still pending after applying the saved plan.

Expected:

```text
No changes.
Your infrastructure matches the configuration.
```

Screenshot:

`04-final-no-changes.png`

## Screenshots

1. `01-saved-plan-show.png` - Inspecting the saved Terraform plan
2. `02-saved-plan-apply.png` - Applying the saved Terraform plan
3. `03-final-saved-plan-result.png` - Verifying the created file and Terraform output
4. `04-final-no-changes.png` - Final Terraform plan showing no pending changes
