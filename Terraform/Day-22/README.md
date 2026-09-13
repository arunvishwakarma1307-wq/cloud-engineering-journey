# Day 22 - Terraform Check Blocks

## Overview

Day 22 covers Terraform `check` blocks.

The practical used a `local_file` resource and a `check` block to verify that the file content matched the expected value.

## What I Did

- Created a `local_file` resource
- Added a Terraform `check` block
- Used an `assert` condition to verify the file content
- Ran `terraform plan` with a correct condition
- Changed the condition intentionally to make the check fail
- Ran `terraform plan` again and observed the failure
- Restored the correct condition
- Verified the final file content

## Test Flow

```text
Correct Condition
       ↓
terraform plan
       ↓
Check Passed
       ↓
Wrong Condition
       ↓
terraform plan
       ↓
Check Failed
       ↓
Restore Condition
       ↓
Final Verification
```

## Screenshots

1. `01-check-block-pass.png` - Check block passed
2. `02-check-block-fail.png` - Check block failed intentionally
3. `03-check-file-content.png` - Final file content verification

## What I Learned

- Terraform `check` blocks
- `assert` block
- Check conditions
- Check failure
- Runtime validation
- Verifying Terraform configuration