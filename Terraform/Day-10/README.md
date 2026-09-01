# Day 10 - Terraform for_each Meta-Argument

## Practical Summary

In this practical, the Terraform `for_each` meta-argument was used to create multiple resources from a map.

The practical included:

- Creating a map variable containing file names and contents
- Using `for_each` with a `local_file` resource
- Using `each.key`
- Using `each.value`
- Creating multiple files dynamically
- Checking Terraform outputs
- Checking `for_each` resource instances in Terraform state
- Verifying the final configuration with `terraform plan`

---

## Files

```text
variables.tf
main.tf
outputs.tf
.gitignore
app.txt
db.txt
cache.txt
```

---

## Screenshots

```text
Screenshots/01-for-each-plan.png
Screenshots/02-for-each-files-created.png
Screenshots/03-for-each-key-value.png
Screenshots/04-for-each-output.png
Screenshots/05-for-each-state-list.png
```

---

## What I Practiced

- Terraform `for_each` meta-argument
- `each.key`
- `each.value`
- Map variables
- Dynamic resource creation
- Terraform outputs
- Terraform state with `for_each`