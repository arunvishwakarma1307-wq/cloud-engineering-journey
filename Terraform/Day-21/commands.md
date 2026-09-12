# Day 21 - Terraform Testing Commands

## Terraform Initialization

```powershell
terraform init
```

---

## Create Tests Folder

```powershell
mkdir tests
```

---

## Check Project Files

```powershell
Get-ChildItem
```

---

## Run Terraform Test

```powershell
terraform test
```

Used to run the Terraform test.

**Screenshot:** `01-terraform-test-pass.png`

---

## Run Failing Test

```powershell
terraform test
```

Used after intentionally changing the expected value to verify how Terraform reports a failed test.

**Screenshot:** `02-terraform-test-fail.png`

---

## Run Final Test

```powershell
terraform test
```

Used after correcting the test condition to verify that the test passes again.

**Screenshot:** `03-terraform-test-final-pass.png`

---

## Screenshot Mapping

1. `01-terraform-test-pass.png` - Initial test passed
2. `02-terraform-test-fail.png` - Intentional test failure
3. `03-terraform-test-final-pass.png` - Final test passed