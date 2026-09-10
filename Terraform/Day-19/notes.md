# Day 19 - Terraform Sensitive Data Notes

## 1. What is Sensitive Data?

Sensitive data is information that should not be unnecessarily displayed or exposed.

Examples:

- API keys
- Passwords
- Access tokens
- Secret keys
- Database credentials

Terraform provides the `sensitive` argument to prevent sensitive values from being displayed in normal CLI output.

---

## 2. Sensitive Variable

A Terraform variable can be marked as sensitive:

```hcl
variable "api_key" {
  description = "Example API key"
  type        = string
  sensitive   = true
}
```

When `sensitive = true`, Terraform treats the variable value as sensitive during CLI output.

---

## 3. Passing Sensitive Variables

Terraform can receive variable values through environment variables.

Example:

```powershell
$env:TF_VAR_api_key="demo-secret-12345"
```

Terraform automatically maps:

```text
TF_VAR_api_key
      ↓
var.api_key
```

Environment variables can be useful for avoiding hardcoding values directly into Terraform configuration files.

---

## 4. Sensitive Outputs

Terraform outputs can also be marked as sensitive:

```hcl
output "api_key" {
  value     = var.api_key
  sensitive = true
}
```

When Terraform displays the output normally, the value is hidden:

```text
api_key = <sensitive>
```

---

## 5. Terraform Output

The following command displays Terraform outputs:

```powershell
terraform output
```

For a sensitive output, Terraform hides the value.

Example:

```text
api_key = <sensitive>
```

---

## 6. Explicitly Revealing Sensitive Output

A sensitive output can be intentionally displayed:

```powershell
terraform output -raw api_key
```

This command explicitly requests the raw value.

This demonstrates that `sensitive = true` does not make the value permanently inaccessible.

---

## 7. Sensitive Does Not Mean Encrypted

One of the most important concepts is:

```text
sensitive = true
```

does **not** mean encryption.

It mainly controls how Terraform displays the value in CLI output.

If Terraform needs the value in its state, the value can still be stored in the state.

---

## 8. Terraform State Security

Terraform state can contain sensitive information.

Therefore, state files and remote backends must be protected using:

- Access controls
- Encryption
- Secure backend configuration
- Restricted permissions
- Secret management systems

The security of Terraform secrets depends not only on `sensitive = true`, but also on protecting the Terraform state and backend.

---

## 9. Sensitive vs Non-Sensitive

### Sensitive

```hcl
sensitive = true
```

Normal Terraform output:

```text
<sensitive>
```

### Non-Sensitive

```hcl
sensitive = false
```

Normal Terraform output:

```text
actual-value
```

---

## 10. Important Security Practices

For real production environments:

- Never hardcode real passwords in `.tf` files.
- Never commit real API keys to GitHub.
- Do not share real secrets in screenshots.
- Protect Terraform state.
- Use secure remote backends.
- Use environment variables or CI/CD secret storage where appropriate.
- Use dedicated secret managers for production secrets.

---

## 11. Key Takeaways

- Terraform supports sensitive variables.
- Terraform supports sensitive outputs.
- `sensitive = true` hides values from normal CLI output.
- `terraform output -raw` can intentionally reveal a sensitive value.
- Sensitive values may still exist in Terraform state.
- `sensitive = true` is not encryption.
- Terraform state must be protected.
- Real secrets should never be committed to GitHub.