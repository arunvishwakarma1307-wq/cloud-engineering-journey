# Day 22 - Terraform Check Blocks Commands

## Terraform Initialization

```powershell
terraform init
```

Initializes the Terraform working directory and downloads the required provider.

---

## Terraform Plan - Check Passed

```powershell
terraform plan
```

Runs the Terraform plan and verifies the `check` block with the correct condition.

**Screenshot:** `01-check-block-pass.png`

---

## Terraform Plan - Check Failed

```powershell
terraform plan
```

Runs the plan after intentionally changing the expected value to `Wrong content`.

The check condition fails and Terraform displays the configured error message.

**Screenshot:** `02-check-block-fail.png`

---

## Terraform Plan - Final Verification

```powershell
terraform plan
```

Runs the final plan after restoring the correct check condition.

**No screenshot taken.**

---

## Verify File Content

```powershell
Get-Content .\check-demo.txt
```

Displays the content of the created file and verifies the final result.

**Screenshot:** `03-check-file-content.png`

---

## Screenshot Mapping

1. `01-check-block-pass.png` - Check block passed
2. `02-check-block-fail.png` - Check block failed intentionally
3. `03-check-file-content.png` - Final file content verification