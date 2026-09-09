# Day 18 - Terraform State Locking Commands

## Terraform Version

```powershell
terraform version
```

Checks the installed Terraform version.

---

## Initialize Terraform

```powershell
terraform init
```

Initializes the Terraform working directory and backend.

---

## Configure MinIO Credentials

```powershell
$env:AWS_ACCESS_KEY_ID="admin"
$env:AWS_SECRET_ACCESS_KEY="Minio12345"
```

Sets the credentials used by the S3-compatible MinIO backend.

---

## Verify Access Key

```powershell
echo $env:AWS_ACCESS_KEY_ID
```

Checks the configured AWS access key environment variable.

---

## Reconfigure Backend

```powershell
terraform init -reconfigure
```

Reconfigures the Terraform backend without migrating the existing state.

---

## Apply Configuration

```powershell
terraform apply
```

Applies the Terraform configuration.

---

## Check Remote State Object

```powershell
docker exec terraform-minio sh -c "ls -la /data/terraform-remote-state/day-18"
```

Checks the Day-18 remote state directory inside the MinIO container.

---

## Lock Timeout

```powershell
terraform plan -lock-timeout=30s
```

Runs a Terraform plan and waits up to 30 seconds to acquire the state lock if it is currently unavailable.

**Screenshot:** `01-lock-timeout-plan.png`

---

## Disable State Locking

```powershell
terraform plan -lock=false
```

Runs the Terraform plan without acquiring a state lock.

**Screenshot:** `02-lock-disabled-plan.png`

---

## Normal Terraform Plan

```powershell
terraform plan
```

Checks whether the actual infrastructure matches the Terraform configuration.

---

## Pull Remote State Metadata

```powershell
terraform state pull | Select-String '"serial"|"lineage"'
```

Retrieves the remote Terraform state and displays the state serial and lineage values.

**Screenshot:** `03-remote-state-locking-verification.png`

---

## Verify Locking Configuration

```powershell
Select-String -Path .\main.tf -Pattern "use_lockfile"
```

Checks whether `use_lockfile = true` is present in the Terraform backend configuration.

**Screenshot:** `04-use-lockfile-enabled.png`

---

## Day 18 Screenshot Mapping

| Screenshot | Command | Purpose |
|---|---|---|
| `01-lock-timeout-plan.png` | `terraform plan -lock-timeout=30s` | Lock timeout |
| `02-lock-disabled-plan.png` | `terraform plan -lock=false` | Lock disabled |
| `03-remote-state-locking-verification.png` | `terraform state pull \| Select-String '"serial"\|"lineage"'` | Remote state metadata |
| `04-use-lockfile-enabled.png` | `Select-String -Path .\main.tf -Pattern "use_lockfile"` | Locking configuration |

---

## Main Commands Learned

```text
terraform plan -lock-timeout=30s
terraform plan -lock=false
terraform state pull
```

These commands are useful when working with Terraform state locking and remote state.