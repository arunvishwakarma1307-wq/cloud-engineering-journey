# Day 19 - Terraform Sensitive Data Commands

## Terraform Initialization

```powershell
terraform init
```

Initializes the Terraform working directory and downloads the required provider.

---

## Set Sensitive Variable

```powershell
$env:TF_VAR_api_key="demo-secret-12345"
```

Sets the Terraform variable value through a PowerShell environment variable.

Terraform automatically maps:

```text
TF_VAR_api_key
      ↓
var.api_key
```

---

## Sensitive Configuration

Initially, the variable and output were configured with:

```hcl
variable "api_key" {
  description = "Example API key"
  type        = string
  sensitive   = true
}
```

The output was also configured with:

```hcl
output "api_key" {
  value     = var.api_key
  sensitive = true
}
```

When `sensitive = true`, Terraform hides the actual value from normal CLI output.

Example:

```text
api_key = <sensitive>
```

---

## Terraform Plan with Sensitive Value

```powershell
terraform plan
```

Creates an execution plan and demonstrates that the sensitive value is hidden from normal Terraform CLI output.

**Screenshot:** `01-sensitive-plan.png`

---

## Terraform Apply

```powershell
terraform apply
```

Applies the Terraform configuration.

When prompted:

```text
yes
```

**Screenshot:** `02-sensitive-apply.png`

---

## Terraform Output with Sensitive Value

```powershell
terraform output
```

When the output is configured with:

```hcl
sensitive = true
```

Terraform hides the actual API key.

Example:

```text
api_key = <sensitive>
secret_file = "./secret-demo.txt"
```

**Screenshot:** `03-sensitive-output.png`

---

## Verify Sensitive Data in State

```powershell
terraform state pull | Select-String '"api_key"'
```

Checks the Terraform state data for the API key entry.

This demonstrates that:

```text
sensitive = true
```

does not mean the value is automatically encrypted or removed from Terraform state.

**Screenshot:** `04-sensitive-state-verification.png`

---

## Explicitly Reveal Sensitive Output

```powershell
terraform output -raw api_key
```

Explicitly displays the raw value of the sensitive output.

Example:

```text
demo-secret-12345
```

This demonstrates that `sensitive = true` hides the value during normal output but does not prevent an authorized user from explicitly requesting it.

**Screenshot:** `05-sensitive-value-reveal.png`

---

## Change Sensitive to False

The variable and output configuration were changed from:

```hcl
sensitive = true
```

to:

```hcl
sensitive = false
```

This means Terraform will no longer hide the value from normal CLI output.

---

## Apply Non-Sensitive Configuration

```powershell
terraform apply
```

Confirm with:

```text
yes
```

The updated configuration is applied.

---

## Terraform Output After Changing to False

```powershell
terraform output
```

After changing:

```hcl
sensitive = true
```

to:

```hcl
sensitive = false
```

the actual API value becomes visible.

Example:

```text
api_key = "demo-secret-12345"
secret_file = "./secret-demo.txt"
```

**Screenshot:** `06-non-sensitive-output.png`

---

## Sensitive vs Non-Sensitive

| Configuration | Terraform Output |
|---|---|
| `sensitive = true` | `api_key = <sensitive>` |
| `sensitive = false` | `api_key = "demo-secret-12345"` |

This practical demonstrated that `sensitive = true` hides the value from normal Terraform CLI output, while `sensitive = false` allows the actual value to be displayed.

---

## Important Security Note

`sensitive = true` is not encryption.

It only controls how Terraform displays the value in CLI output.

Sensitive values may still be stored in Terraform state when required.

Therefore, Terraform state and its backend must be protected properly.

Real API keys, passwords, tokens, and other secrets should never be committed to GitHub.

---

## Day 19 Command Flow

```text
terraform init
        ↓
Set TF_VAR_api_key
        ↓
sensitive = true
        ↓
terraform plan
        ↓
terraform apply
        ↓
terraform output
        ↓
API key hidden as <sensitive>
        ↓
terraform state pull
        ↓
terraform output -raw api_key
        ↓
API key explicitly revealed
        ↓
Change sensitive = false
        ↓
terraform apply
        ↓
terraform output
        ↓
Actual API value becomes visible
```

---

## Screenshot Mapping

1. `01-sensitive-plan.png` - Sensitive value hidden during Terraform plan
2. `02-sensitive-apply.png` - Terraform apply with sensitive configuration
3. `03-sensitive-output.png` - Sensitive output shown as `<sensitive>`
4. `04-sensitive-state-verification.png` - Sensitive data state verification
5. `05-sensitive-value-reveal.png` - Explicitly revealing the sensitive output
6. `06-non-sensitive-output.png` - Actual API value visible after `sensitive = false`