# Day 23 - Terraform Provider Aliases Commands

## Terraform Initialization

```powershell
terraform init
```

Initializes the Terraform working directory and downloads the required provider.

---

## Provider Alias Plan

```powershell
terraform plan
```

Verifies the default and aliased provider configurations.

**Screenshot:** `01-provider-alias-plan.png`

---

## Apply Configuration

```powershell
terraform apply
```

Applies the Terraform configuration and creates both resources.

---

## Verify Created Files

```powershell
Get-ChildItem -Filter "*.txt"
```

Verifies that both provider-related files were created.

**Screenshot:** `02-provider-alias-files.png`

---

## Verify Provider Alias Configuration

```powershell
Select-String -Path .\main.tf -Pattern "alias|provider"
```

Displays the provider configuration, alias, and provider selection.

**Screenshot:** `03-provider-alias-config.png`

---

## Verify Terraform State

```powershell
terraform state list
```

Lists the resources currently tracked in Terraform state.

**Screenshot:** `04-provider-alias-state.png`

---

## Inspect Aliased Resource

```powershell
terraform state show local_file.aliased_provider
```

Displays the state details of the resource using the aliased provider.

**Screenshot:** `05-aliased-provider-state.png`

---

## Final Verification

```powershell
terraform plan
```

Performs the final verification of the Terraform configuration.

**No screenshot taken.**

---

## Screenshot Mapping

1. `01-provider-alias-plan.png` - Provider alias plan
2. `02-provider-alias-files.png` - Created files
3. `03-provider-alias-config.png` - Provider alias configuration
4. `04-provider-alias-state.png` - Terraform state
5. `05-aliased-provider-state.png` - Aliased resource state