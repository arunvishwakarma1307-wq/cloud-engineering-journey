# Day 20 - Terraform moved Blocks Commands

## Terraform Initialization

```powershell
terraform init
```

Initializes the Terraform working directory and downloads the required provider.

---

## Initial Resource Creation

```powershell
terraform apply
```

Creates the initial Terraform resource using the `local_file.old_name` resource address.

When prompted:

```text
yes
```

---

## Plan After Resource Rename

```powershell
terraform plan
```

Checks what Terraform plans to do after changing the resource address from `local_file.old_name` to `local_file.new_name`.

This demonstrated the problem that can occur when a resource is renamed without properly handling its state address.

**Screenshot:** `01-rename-without-moved.png`

---

## Verify Terraform State

```powershell
terraform state list
```

Displays the resources currently tracked in Terraform state.

**Screenshot:** `02-moved-state-list.png`

---

## Check Resource State

```powershell
terraform state show local_file.new_name
```

This command was used to check the new resource address before the moved block was applied.

At that point, the resource was still stored in state as:

```text
local_file.old_name
```

Therefore, Terraform returned:

```text
No instance found for the given address!
```

This command was part of troubleshooting and is not included as a screenshot.

---

## Apply moved Block

```powershell
terraform apply
```

Applies the configuration containing the `moved` block and updates the Terraform resource address.

When prompted:

```text
yes
```

**Screenshot:** `03-moved-block-apply.png`

---

## Final State Verification

```powershell
terraform state list
```

Verifies that the resource address has changed to:

```text
local_file.new_name
```

**Screenshot:** `04-moved-state-final.png`

---

## Final Plan Verification

```powershell
terraform plan
```

Confirms that Terraform has no remaining changes.

Expected result:

```text
No changes. Your infrastructure matches the configuration.
```

---

## Day 20 Command Flow

```text
terraform init
        ↓
terraform apply
        ↓
Rename resource
        ↓
terraform plan
        ↓
terraform state list
        ↓
Add moved block
        ↓
terraform apply
        ↓
terraform state list
        ↓
terraform plan
```

---

## Screenshot Mapping

1. `01-rename-without-moved.png` - Plan after resource rename
2. `02-moved-state-list.png` - Initial state verification
3. `03-moved-block-apply.png` - Applying the moved block
4. `04-moved-state-final.png` - Final state showing the new resource address