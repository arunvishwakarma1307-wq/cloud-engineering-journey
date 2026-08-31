# Day 09 - Terraform count Meta-Argument

## Practical Summary

In this practical, the Terraform `count` meta-argument was used to create multiple instances of the same resource.

The practical included:

- Creating a variable to control the number of resources
- Using `count` with a `local_file` resource
- Using `count.index`
- Creating multiple files from one resource block
- Checking generated files
- Using Terraform outputs
- Changing the resource count through a variable
- Checking multiple resource instances in Terraform state

---

## Files

```text
variables.tf
main.tf
outputs.tf
.gitignore
file-1.txt
file-2.txt
file-3.txt
file-4.txt
file-5.txt
```

---

## Screenshots

```text
Screenshots/01-count-plan.png
Screenshots/02-count-files-created.png
Screenshots/03-count-index-results.png
Screenshots/04-count-output.png
Screenshots/05-count-variable-scaling.png
Screenshots/06-count-state-list.png
```

---

## What I Practiced

- Terraform `count` meta-argument
- `count.index`
- Resource replication
- Variable-controlled resource count
- Terraform outputs
- Terraform state instances