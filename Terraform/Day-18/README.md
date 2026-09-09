# Day 18 - Terraform State Locking

## Overview

Day 18 focuses on **Terraform State Locking** and how Terraform protects state from simultaneous operations.

Terraform state locking helps prevent multiple Terraform operations from modifying the same state at the same time. This reduces the risk of state corruption and conflicting changes.

In this practical, an S3-compatible backend using MinIO was used to configure Terraform state locking with the `use_lockfile` option.

---

## Objective

The objectives of this practical were:

- Understand Terraform State Locking
- Understand why state locking is required
- Configure state locking in an S3-compatible backend
- Use the `use_lockfile` option
- Understand `-lock-timeout`
- Understand `-lock=false`
- Verify the remote Terraform state
- Verify the locking configuration

---

## Technologies Used

- Terraform
- MinIO
- S3-compatible backend
- PowerShell
- Windows

---

## Terraform State Locking

Terraform State Locking prevents multiple Terraform operations from modifying the same state simultaneously.

Without proper locking, two users or Terraform processes could attempt to update the same state at the same time, which may result in conflicting changes or state corruption.

State locking is especially important when Terraform state is stored in a shared remote backend.

---

## S3 Backend Configuration

The Terraform configuration used an S3-compatible backend:

```hcl
terraform {
  backend "s3" {
    bucket = "terraform-remote-state"
    key    = "day-18/terraform.tfstate"
    region = "us-east-1"

    endpoints = {
      s3 = "http://localhost:9000"
    }

    use_path_style = true
    use_lockfile   = true

    skip_credentials_validation = true
    skip_region_validation      = true
    skip_requesting_account_id  = true
    skip_metadata_api_check     = true
  }
}
```

The important configuration for Day 18 is:

```hcl
use_lockfile = true
```

This enables state locking using a lock file with the S3 backend.

---

## Lock Timeout

Terraform provides the `-lock-timeout` option.

Example:

```text
terraform plan -lock-timeout=30s
```

This tells Terraform to wait for up to 30 seconds to acquire the state lock if the state is already locked.

This is useful in shared environments where another Terraform operation may temporarily hold the lock.

---

## Disabling State Locking

Terraform also provides the `-lock=false` option:

```text
terraform plan -lock=false
```

This tells Terraform not to acquire a state lock for the operation.

Disabling locking should normally be avoided when working with shared Terraform state because another Terraform process could modify the same state simultaneously.

---

## Remote State Verification

The remote Terraform state was verified using:

```text
terraform state pull | Select-String '"serial"|"lineage"'
```

The output showed:

```text
"serial": 1
"lineage": "..."
```

The `serial` value represents the state version number, while the `lineage` identifies the state.

This confirmed that Terraform was successfully working with the remote state.

---

## Locking Configuration Verification

The locking configuration was verified using:

```text
Select-String -Path .\main.tf -Pattern "use_lockfile"
```

The result confirmed:

```text
use_lockfile = true
```

Therefore, state locking was enabled in the backend configuration.

---

## Important Terraform Locking Commands

```text
terraform plan -lock-timeout=30s
```

Waits for the specified time to acquire a state lock.

```text
terraform plan -lock=false
```

Runs the operation without acquiring a state lock.

---

## State Locking Workflow

```text
Terraform Operation
        ↓
Request State Lock
        ↓
Lock Available?
     ↙       ↘
   Yes        No
    ↓          ↓
Acquire Lock  Wait
    ↓          ↓
Modify/Read   Lock Timeout
State
    ↓
Operation Complete
    ↓
Release Lock
```

---

## Final Verification

The final Terraform plan was executed successfully:

```text
terraform plan
```

Result:

```text
No changes. Your infrastructure matches the configuration.
```

This confirmed that the Terraform configuration and remote state were consistent.

---

## Screenshots

The practical contains the following screenshots:

1. `01-lock-timeout-plan.png` - Terraform plan using lock timeout
2. `02-lock-disabled-plan.png` - Terraform plan with locking disabled
3. `03-remote-state-locking-verification.png` - Remote state metadata verification
4. `04-use-lockfile-enabled.png` - Verification of `use_lockfile = true`

---

## What I Learned

- Terraform State Locking
- Importance of state locking
- Shared remote state protection
- S3 backend locking
- `use_lockfile`
- `-lock-timeout`
- `-lock=false`
- Terraform remote state verification
- State serial and lineage
- State consistency verification

---

## Conclusion

Day 18 demonstrated how Terraform State Locking helps protect shared Terraform state from concurrent operations.

The practical also demonstrated how locking can be configured with an S3-compatible backend and how Terraform provides options such as `-lock-timeout` and `-lock=false` for controlling lock behavior.