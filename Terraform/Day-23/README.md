# Day 23 - Terraform Provider Aliases

## Overview

Day 23 covers Terraform Provider Aliases.

A provider alias allows multiple configurations of the same provider to be defined and selected for different resources.

In this practical, two configurations of the `local` provider were created:

- Default provider
- `secondary` aliased provider

## What I Did

- Configured the default `local` provider
- Created a second `local` provider using `alias = "secondary"`
- Created one resource using the default provider
- Created another resource using `local.secondary`
- Ran `terraform plan`
- Applied the configuration
- Verified both files were created
- Verified the provider alias configuration
- Verified both resources in Terraform state
- Inspected the aliased resource using `terraform state show`
- Performed final Terraform plan verification

## Provider Configuration

```hcl
provider "local" {}

provider "local" {
  alias = "secondary"
}
```

The aliased provider was selected by the resource using:

```hcl
provider = local.secondary
```

## Practical Flow

```text
Default Provider
       ↓
default-provider.txt

Secondary Provider
       ↓
aliased-provider.txt
```

## Screenshots

1. `01-provider-alias-plan.png` - Provider alias plan
2. `02-provider-alias-files.png` - Files created by both resources
3. `03-provider-alias-config.png` - Provider alias configuration
4. `04-provider-alias-state.png` - Resources in Terraform state
5. `05-aliased-provider-state.png` - Aliased resource state details

## What I Learned

- Terraform providers
- Provider aliases
- Multiple provider configurations
- `alias`
- `provider = local.secondary`
- Provider selection for resources
- Terraform state verification