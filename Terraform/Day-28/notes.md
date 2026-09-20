# Day 28 - Terraform Saved Plan and Plan Review

## Terraform Plan

`terraform plan` analyzes the Terraform configuration and shows what changes Terraform intends to make to the infrastructure.

It does not directly create or modify resources.

A Terraform plan generally shows:

- Resources to add
- Resources to change
- Resources to destroy
- The final planned result

---

## Saved Terraform Plan

Terraform can save an execution plan into a file.

The main purpose of a saved plan is to allow the planned changes to be reviewed before applying them.

This is useful when infrastructure changes require review or approval before execution.

---

## Plan File

A saved Terraform plan is stored as a plan file.

Example:

```text
tfplan
```

The file contains the generated Terraform execution plan.

A saved plan file should not be manually edited.

---

## `terraform plan -out`

The `terraform plan -out=tfplan` command generates a Terraform plan and saves it into the `tfplan` file.

The saved plan can later be inspected and applied.

Concept:

```text
Terraform Configuration
        ↓
   terraform plan
        ↓
    Saved Plan
      tfplan
```

---

## Reviewing a Saved Plan

A saved plan can be inspected before it is applied.

Terraform can display the saved plan in a human-readable format.

This allows planned infrastructure changes to be reviewed before execution.

---

## `terraform show`

`terraform show` displays the contents of a saved Terraform plan in a human-readable format.

Example:

```text
tfplan
  ↓
terraform show
  ↓
Readable Plan
```

It is useful for reviewing the planned changes before applying the saved plan.

---

## Applying a Saved Plan

A saved Terraform plan can be applied directly.

Concept:

```text
Saved Plan
    ↓
Review
    ↓
Apply Saved Plan
    ↓
Infrastructure Changes
```

Applying the saved plan allows the previously generated plan to be used for the infrastructure changes.

---

## Normal Apply vs Saved Plan Apply

### Normal Apply

With a normal `terraform apply`, Terraform performs the planning and application workflow together.

```text
Configuration
      ↓
Plan
      ↓
Apply
```

### Saved Plan Apply

With a saved plan workflow, the plan is generated and saved before it is applied.

```text
Configuration
      ↓
Saved Plan
      ↓
Review
      ↓
Apply Saved Plan
```

---

## Plan Review

Plan review is an important step for checking infrastructure changes before they are applied.

During a plan review, it is possible to check:

- Which resources will be created
- Which resources will be changed
- Which resources will be destroyed
- Which resource attributes will change
- Whether the planned changes match the expected configuration

---

## Saved Plan and Automation

Saved plans can be useful in CI/CD and controlled infrastructure workflows.

A typical workflow can be:

```text
Terraform Configuration
        ↓
Plan
        ↓
Save Plan
        ↓
Review / Approval
        ↓
Apply
```

This allows infrastructure changes to be reviewed before they are applied.

---

## Important Security Point

Terraform saved plan files should be handled carefully.

Plan files may contain infrastructure configuration details and potentially sensitive information.

Therefore, saved plan files should:

- Not be unnecessarily committed to Git repositories
- Not be publicly shared
- Be stored in a secure location

---

## Saved Plan vs Terraform State

A saved plan and Terraform state are different concepts.

### Saved Plan

A saved plan represents:

```text
What Terraform plans to do
```

### Terraform State

Terraform state represents information about:

```text
What Terraform currently manages
```

Simple difference:

```text
Plan  → Proposed Changes
State → Managed Infrastructure Information
```

---

## Final Verification

After applying a saved plan, `terraform plan` can be run again to verify whether any infrastructure changes are still pending.

Expected result:

```text
No changes.
Your infrastructure matches the configuration.
```

This confirms that the infrastructure matches the Terraform configuration.

---

## Real-World Use

Saved Terraform plans can be useful for:

- Infrastructure change review
- Approval workflows
- CI/CD pipelines
- Production deployments
- Controlled infrastructure changes
- Change management

---

## Key Terms

- Terraform Plan
- Saved Plan
- Plan File
- `terraform plan -out`
- `terraform show`
- Plan Review
- Saved Plan Apply
- Infrastructure Changes
- Terraform State
- Change Approval