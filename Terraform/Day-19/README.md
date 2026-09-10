# Day 19 - Terraform Sensitive Data

## Overview

Day 19 focused on handling sensitive values in Terraform using the `sensitive` argument.

Terraform can mark variables and outputs as sensitive so their values are hidden from normal CLI output.

---

## Objective

The objectives of this practical were:

- Understand Terraform sensitive variables
- Use `sensitive = true`
- Understand sensitive outputs
- Observe how Terraform hides sensitive values
- Explicitly reveal a sensitive output
- Understand the difference between sensitive and non-sensitive values
- Understand why `sensitive = true` is not encryption

---

## Technologies Used

- Terraform
- Terraform Local Provider
- PowerShell
- Windows

---

## Sensitive Variables

Terraform variables can be marked as sensitive:

```hcl
variable "api_key" {
  description = "Example API key"
  type        = string
  sensitive   = true
}
```

When a variable is marked as sensitive, Terraform hides its value from normal CLI output.

---

## Passing the Sensitive Value

The variable value was provided through a PowerShell environment variable:

```powershell
$env:TF_VAR_api_key="demo-secret-12345"
```

Terraform automatically maps the environment variable:

```text
TF_VAR_api_key
      ↓
var.api_key
```

The value used in this practical was only a demo value.

---

## Sensitive Output

The API key was initially configured as a sensitive output:

```hcl
output "api_key" {
  value     = var.api_key
  sensitive = true
}
```

Terraform displayed the output as:

```text
api_key = <sensitive>
```

The actual value was hidden from normal Terraform output.

---

## Terraform Apply

The configuration was applied using:

```powershell
terraform apply
```

After confirmation with:

```text
yes
```

Terraform created the required resource and stored the output information.

---

## Terraform Output

The command:

```powershell
terraform output
```

was used to verify the outputs.

When the output was marked as sensitive, Terraform displayed:

```text
api_key = <sensitive>
```

while the non-sensitive file output remained visible.

---

## State Verification

Terraform state was inspected using:

```powershell
terraform state pull | Select-String '"api_key"'
```

This demonstrated an important concept:

`sensitive = true` does not mean the value is encrypted or automatically removed from Terraform state.

Sensitive information can still exist in state when Terraform needs it.

Therefore, the Terraform state backend must also be protected properly.

---

## Explicitly Revealing a Sensitive Output

A sensitive output can be intentionally displayed using:

```powershell
terraform output -raw api_key
```

This revealed the demo value:

```text
demo-secret-12345
```

This demonstrates that `sensitive = true` primarily controls how Terraform displays values in the CLI.

---

## Sensitive vs Non-Sensitive

The variable and output were temporarily changed from:

```hcl
sensitive = true
```

to:

```hcl
sensitive = false
```

After applying the updated configuration, Terraform displayed the value normally:

```text
api_key = "demo-secret-12345"
```

This demonstrated the difference between sensitive and non-sensitive output.

---

## Important Security Concept

`sensitive = true` is **not encryption**.

It mainly prevents Terraform from displaying sensitive values in normal CLI output.

It does not provide complete secret management.

For real production secrets, additional protection should be used, such as:

- Secure Terraform state backends
- Access controls
- Encrypted state storage
- Secret managers
- Environment variables or secure CI/CD secrets
- Restricted access to Terraform state

---

## Practical Workflow

```text
Create Terraform configuration
        ↓
Define sensitive variable
        ↓
Provide variable value
        ↓
Run terraform plan
        ↓
Sensitive value hidden
        ↓
Run terraform apply
        ↓
Verify terraform output
        ↓
Sensitive output remains hidden
        ↓
Explicitly reveal with terraform output -raw
        ↓
Understand sensitive ≠ encryption
```

---

## Screenshots

The following screenshots were captured during the practical:

1. `01-sensitive-plan.png` - Sensitive value hidden during Terraform plan
2. `02-sensitive-apply.png` - Terraform apply with sensitive output
3. `03-sensitive-output.png` - Sensitive output verification
4. `04-sensitive-state-verification.png` - Terraform state verification
5. `05-sensitive-value-reveal.png` - Explicitly revealing sensitive output
6. `06-non-sensitive-output.png` - Non-sensitive output verification

---

## What I Learned

- Terraform sensitive variables
- `sensitive = true`
- Sensitive outputs
- Hiding secrets in Terraform CLI output
- Explicitly revealing sensitive outputs
- Difference between sensitive and non-sensitive values
- Terraform state and sensitive information
- `sensitive` does not mean encryption
- Importance of securing Terraform state

---

## Conclusion

Day 19 demonstrated how Terraform handles sensitive values.

The practical showed that `sensitive = true` hides values from normal Terraform CLI output, while explicitly requesting the output can reveal the value.

The most important lesson is that marking a value as sensitive does not encrypt it. Terraform state and the backend storing that state must also be secured properly.