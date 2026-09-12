# Day 21 - Terraform Testing

## Overview

Day 21 covers Terraform testing using `.tftest.hcl` test files.

The practical used a `local_file` resource and created a test to verify its expected content.

## What I Did

- Created a Terraform `local_file` resource
- Created `tests/file_test.tftest.hcl`
- Used `run` and `assert` blocks
- Ran `terraform test`
- Verified a passing test
- Created an intentional test failure
- Corrected the test and verified it passed again

## Test Flow

```text
Terraform Configuration
        ↓
.tftest.hcl
        ↓
run + assert
        ↓
terraform test
        ↓
PASS / FAIL
```

## Screenshots

1. `01-terraform-test-pass.png` - Terraform test passed
2. `02-terraform-test-fail.png` - Intentional test failure
3. `03-terraform-test-final-pass.png` - Final test passed

## What I Learned

- Terraform testing
- `.tftest.hcl`
- `run` block
- `assert` block
- Passing and failing tests
- `terraform test`