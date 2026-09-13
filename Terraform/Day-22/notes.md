# Day 22 - Terraform Check Blocks Notes

## Terraform Check Blocks

Terraform `check` blocks are used to add additional checks to a Terraform configuration.

They help verify that a condition is true during Terraform operations.

---

## Check Block Structure

We used this structure:

```hcl
check "file_content_check" {
  assert {
    condition     = local_file.check_demo.content == "Terraform check block practical."
    error_message = "The file content does not match the expected value."
  }
}
```

The `check` block contains an `assert` block.

---

## Assert Block

The `assert` block contains the condition that Terraform checks.

In our practical:

```hcl
assert {
  condition     = local_file.check_demo.content == "Terraform check block practical."
  error_message = "The file content does not match the expected value."
}
```

The condition compares the actual file content with the expected content.

---

## Condition

Our condition was:

```hcl
local_file.check_demo.content == "Terraform check block practical."
```

This means:

```text
Actual file content
        =
Expected content
```

If both values match, the check passes.

---

## Error Message

We used:

```hcl
error_message = "The file content does not match the expected value."
```

This message explains the problem when the check condition is not satisfied.

---

## Check Passed

Initially, the expected content was correct:

```text
Terraform check block practical.
```

We ran:

```powershell
terraform plan
```

The check passed successfully.

Screenshot:

```text
01-check-block-pass.png
```

---

## Check Failed

To understand a failed check, we temporarily changed the expected value to:

```text
Wrong content
```

The actual content was still:

```text
Terraform check block practical.
```

Therefore, the condition became false.

We ran:

```powershell
terraform plan
```

The check failed and Terraform displayed the configured error message.

Screenshot:

```text
02-check-block-fail.png
```

---

## Restoring the Check

We changed the condition back to:

```hcl
condition = local_file.check_demo.content == "Terraform check block practical."
```

This restored the correct validation condition.

---

## Final File Verification

We verified the created file using:

```powershell
Get-Content .\check-demo.txt
```

The output confirmed:

```text
Terraform check block practical.
```

Screenshot:

```text
03-check-file-content.png
```

---

## Check Block vs Test

Day 21 covered Terraform testing using `.tftest.hcl`.

Day 22 introduced Terraform `check` blocks directly inside the Terraform configuration.

```text
Day 21
Terraform Testing
      ↓
.tftest.hcl
      ↓
terraform test

Day 22
Terraform Check Block
      ↓
check + assert
      ↓
terraform plan
```

---

## Today's Practical Flow

```text
Create local_file
       ↓
Add check block
       ↓
Add assert condition
       ↓
terraform plan
       ↓
Check passed
       ↓
Change expected value
       ↓
terraform plan
       ↓
Check failed
       ↓
Restore correct condition
       ↓
Verify file content
```

---

## What I Learned

- Terraform `check` blocks
- `assert` blocks
- Conditions
- Error messages
- Successful checks
- Failed checks
- Runtime validation
- Difference between Terraform testing and check blocks
- Verifying the final resource output