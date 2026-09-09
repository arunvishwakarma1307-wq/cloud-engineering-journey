# Day 18 - Terraform State Locking

## What is Terraform State Locking?

Terraform State Locking is a mechanism used to prevent multiple Terraform operations from modifying the same state at the same time.

When Terraform works with shared remote state, locking helps prevent conflicting changes and reduces the risk of state corruption.

---

## Why State Locking is Important

Terraform state contains information about the infrastructure managed by Terraform.

If two Terraform processes modify the same state simultaneously, problems can occur, such as:

- Conflicting infrastructure changes
- State corruption
- Incorrect resource tracking
- Unexpected Terraform behavior

State locking helps prevent these situations.

---

## State Locking with S3 Backend

The S3 backend can use a lock file to coordinate access to Terraform state.

In this practical, the following configuration was used:

```hcl
use_lockfile = true
```

This enables locking through the S3 backend's lock file mechanism.

---

## Lock File

When Terraform performs an operation that requires the state lock, Terraform can create a temporary lock file.

The lock protects the state while the operation is running.

After the Terraform operation finishes, the lock is released.

Conceptually:

```text
Terraform Operation
        ↓
Acquire State Lock
        ↓
Work with State
        ↓
Operation Complete
        ↓
Release State Lock
```

The lock file is temporary, so it may not be visible after the operation has completed.

---

## Lock Timeout

Terraform provides the `-lock-timeout` option.

Example:

```text
terraform plan -lock-timeout=30s
```

This specifies how long Terraform should wait to acquire the state lock when the state is already locked.

A timeout can be useful when another Terraform process is temporarily using the same state.

---

## Disabling Locking

Terraform also provides:

```text
-lock=false
```

Example:

```text
terraform plan -lock=false
```

This disables state locking for that Terraform operation.

Disabling locking should generally be avoided when working with shared state because multiple operations could access the state at the same time.

---

## Remote State

In this practical, Terraform state was stored in an S3-compatible MinIO backend.

The backend configuration used:

```text
Bucket: terraform-remote-state
Key: day-18/terraform.tfstate
```

This means the Terraform state was stored remotely instead of as a normal local `terraform.tfstate` file in the working directory.

---

## State Serial

Terraform state contains a `serial` value.

Example:

```text
"serial": 1
```

The serial number represents the state version and changes as the state is updated.

---

## State Lineage

Terraform state also contains a `lineage` value.

Example:

```text
"lineage": "..."
```

The lineage identifies the state and helps Terraform distinguish one state history from another.

---

## Verifying Remote State

The remote state can be retrieved using:

```text
terraform state pull
```

In this practical, the serial and lineage were extracted using:

```text
terraform state pull | Select-String '"serial"|"lineage"'
```

---

## Locking Configuration Verification

The `use_lockfile` configuration was verified using:

```text
Select-String -Path .\main.tf -Pattern "use_lockfile"
```

The result confirmed:

```text
use_lockfile = true
```

---

## Important Points

- State locking protects shared Terraform state.
- Locking is especially important with remote state.
- S3 backend supports state locking using `use_lockfile`.
- `-lock-timeout` controls how long Terraform waits for a lock.
- `-lock=false` disables locking for an operation.
- Lock files are temporary and are normally removed after the operation.
- State serial represents the state version.
- State lineage identifies the state history.

---

## Day 18 Summary

Day 18 focused on Terraform State Locking and remote state consistency.

The practical demonstrated how to configure S3 backend locking, use lock-related Terraform options, and verify remote Terraform state metadata.