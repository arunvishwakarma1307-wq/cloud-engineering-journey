# Day 29 - Terraform Formatting

## Terraform Formatting

Terraform provides a built-in formatting tool to keep Terraform configuration files consistent and readable.

The main purposes of Terraform formatting are:

- Improve code readability
- Maintain consistent indentation
- Keep Terraform configuration in a standard style
- Make collaboration easier in team projects

---

## `terraform fmt`

`terraform fmt` automatically formats Terraform configuration files according to Terraform's standard formatting style.

It reduces the need to manually fix indentation and spacing.

Example:

```hcl
resource "local_file" "demo" {
filename="${path.module}/demo.txt"
content="Hello Terraform"
}
```

After formatting:

```hcl
resource "local_file" "demo" {
  filename = "${path.module}/demo.txt"
  content  = "Hello Terraform"
}
```

---

## Automatic Formatting

The `terraform fmt` command automatically adjusts the formatting of Terraform configuration files.

It mainly handles:

- Indentation
- Spacing
- Alignment
- Block formatting

---

## `terraform fmt -check`

`terraform fmt -check` checks whether Terraform configuration files follow the expected formatting style.

It does not modify the files.

If the files are already correctly formatted, the command normally produces no output and returns a successful exit status.

If formatting is incorrect, Terraform can show the names of files that need formatting.

---

## `terraform fmt` vs `terraform fmt -check`

| Command | Purpose |
|---|---|
| `terraform fmt` | Automatically formats Terraform files |
| `terraform fmt -check` | Checks Terraform file formatting |

Simple difference:

```text
terraform fmt
      ↓
Format the code

terraform fmt -check
      ↓
Check the formatting
```

---

## Why Formatting Is Important

Terraform projects can contain multiple configuration files and may be maintained by multiple developers.

Consistent formatting helps to:

- Make code easier to read
- Make changes easier to review
- Keep Git diffs cleaner
- Maintain a common coding style
- Make configuration easier to maintain

---

## Formatting and Git

Terraform formatting is useful as part of a Git workflow.

A common workflow can be:

```text
Edit Terraform Code
        ↓
terraform fmt
        ↓
terraform fmt -check
        ↓
terraform validate
        ↓
git commit
```

This helps maintain consistently formatted Terraform code in a repository.

---

## Formatting vs Validation

Formatting and validation have different purposes.

### Formatting

`terraform fmt`

Formats the Terraform configuration according to Terraform's standard style.

### Validation

`terraform validate`

Checks whether the Terraform configuration is syntactically valid and internally consistent.

Simple difference:

```text
fmt       → Code formatting
validate  → Configuration validity
```

---

## Provider Initialization

Required providers must be available before Terraform can fully validate a new configuration.

The Terraform working directory can be initialized using:

```text
terraform init
```

After initialization, Terraform can use the required providers during configuration validation.

---

## Terraform Formatting in Teams

Consistent formatting is useful in team-based Terraform projects because different developers may otherwise use different indentation and spacing styles.

`terraform fmt` provides a common formatting standard automatically.

This makes code reviews and collaboration easier.

---

## Terraform Formatting in CI/CD

CI/CD pipelines can use `terraform fmt -check` to verify that Terraform files are correctly formatted.

Concept:

```text
Developer Push
      ↓
CI Pipeline
      ↓
terraform fmt -check
      ↓
Formatting Correct?
      ↓
Continue Pipeline
```

If the formatting check fails, the configuration can be formatted and committed again.

---

## Important Points

- `terraform fmt` automatically formats Terraform configuration files.
- `terraform fmt -check` checks Terraform file formatting.
- `terraform fmt -check` normally produces no output when formatting is correct.
- Formatting and validation are different concepts.
- `terraform validate` checks configuration validity.
- Consistent formatting makes Git diffs and code reviews easier.
- Terraform formatting can also be checked in CI/CD pipelines.

---

## Key Terms

- Terraform Formatting
- `terraform fmt`
- `terraform fmt -check`
- Code Formatting
- Consistent Style
- Terraform Validation
- `terraform validate`
- Provider Initialization
- Git Workflow
- CI/CD Formatting Check