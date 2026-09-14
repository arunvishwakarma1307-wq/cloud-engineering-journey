# Day 23 - Terraform Provider Aliases Notes

## Provider Alias

A Terraform provider alias allows us to create multiple configurations of the same provider.

Instead of using only one provider configuration, we can create another configuration with a different name.

---

## Default Provider

In our practical, we first created the normal `local` provider:

```hcl
provider "local" {}
```

This is the default provider configuration.

A resource can use it without specifying a `provider` argument.

Example:

```hcl
resource "local_file" "default_provider" {
  filename = "${path.module}/default-provider.txt"
  content  = "This file uses the default provider configuration."
}
```

---

## Aliased Provider

We created another configuration of the same provider:

```hcl
provider "local" {
  alias = "secondary"
}
```

Here:

```text
local
  ↓
secondary
```

The name `secondary` is the alias name.

---

## Selecting an Aliased Provider

A resource can explicitly select the aliased provider using:

```hcl
provider = local.secondary
```

Our resource was:

```hcl
resource "local_file" "aliased_provider" {
  provider = local.secondary

  filename = "${path.module}/aliased-provider.txt"
  content  = "This file uses the secondary provider configuration."
}
```

This tells Terraform that this resource should use the `secondary` provider configuration.

---

## Default vs Aliased Provider

Our practical had two resources:

```text
local_file.default_provider
        ↓
Default local provider

local_file.aliased_provider
        ↓
local.secondary provider
```

Both resources use the same provider type, but the second resource explicitly selects the aliased configuration.

---

## Terraform Plan

We used:

```powershell
terraform plan
```

The plan verified that Terraform accepted both provider configurations and the resources using them.

Screenshot:

```text
01-provider-alias-plan.png
```

---

## Applying the Configuration

We used:

```powershell
terraform apply
```

After confirmation, Terraform created both resources.

The resources created:

```text
default-provider.txt
aliased-provider.txt
```

---

## File Verification

We verified the created files using:

```powershell
Get-ChildItem -Filter "*.txt"
```

The output showed both files.

Screenshot:

```text
02-provider-alias-files.png
```

---

## Provider Alias Configuration Verification

We used:

```powershell
Select-String -Path .\main.tf -Pattern "alias|provider"
```

This displayed the important provider configuration lines.

It showed:

```text
provider "local" {}
alias = "secondary"
provider = local.secondary
```

Screenshot:

```text
03-provider-alias-config.png
```

---

## Terraform State

We checked the resources managed by Terraform using:

```powershell
terraform state list
```

The state contained:

```text
local_file.default_provider
local_file.aliased_provider
```

This confirmed that both resources were being tracked by Terraform.

Screenshot:

```text
04-provider-alias-state.png
```

---

## Inspecting the Aliased Resource

We used:

```powershell
terraform state show local_file.aliased_provider
```

This displayed the details of the resource that was configured to use the aliased provider.

Screenshot:

```text
05-aliased-provider-state.png
```

---

## Final Verification

Finally, we ran:

```powershell
terraform plan
```

The configuration was already applied, so Terraform confirmed that there were no further changes required.

---

## Practical Flow

```text
Configure Default Provider
          ↓
Configure Aliased Provider
          ↓
Assign Providers to Resources
          ↓
terraform plan
          ↓
terraform apply
          ↓
Verify Created Files
          ↓
Verify Provider Configuration
          ↓
Verify Terraform State
          ↓
Inspect Aliased Resource
          ↓
Final terraform plan
```

---

## What I Learned

- Terraform providers
- Default provider configuration
- Provider aliases
- `alias`
- `provider` argument
- `local.secondary`
- Assigning a provider to a resource
- Terraform state verification
- Inspecting provider-based resources