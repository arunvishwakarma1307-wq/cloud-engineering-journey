# Day 06 - Terraform Data Sources

## Data Source

A Terraform Data Source is used to read information from an existing resource without creating or managing that resource.

In this practical, the `local_file` data source was used to read the content of an existing text file.

---

## Existing File

Created an existing file:

```text
existing.txt
```

Content:

```text
This file already exists
```

---

## Data Source Configuration

The `local_file` data source was configured to read the existing file.

The filename was provided through a Terraform variable.

---

## Variables

Created `variables.tf` and defined the `file_name` variable with a default value of `existing.txt`.

This makes the file name configurable.

---

## Outputs

Created `outputs.tf` to display the content read by the Data Source.

The output name used was:

```text
existing_file_content
```

---

## Terraform.tfvars

Created `terraform.tfvars` to provide the value of the `file_name` variable.

```hcl
file_name = "existing.txt"
```

---

## Variable Override

A second existing file was created:

```text
second.txt
```

Content:

```text
This is the second existing file
```

The filename variable was overridden from the command line using:

```text
-var="file_name=second.txt"
```

Terraform then read the content from `second.txt`.

---

## Practical Workflow

The practical was performed by:

1. Creating an existing text file.
2. Configuring a Terraform Data Source.
3. Creating a variable for the file name.
4. Reading the file using the Data Source.
5. Creating an output for the file content.
6. Using `terraform.tfvars`.
7. Testing command-line variable override.
8. Verifying the returned file content.

Terraform commands such as `init`, `validate`, `plan`, `apply`, `output`, and `console` were used during the practical.

---

## Screenshots

```text
01-data-source-read.png
02-variable-file-name.png
03-output-file.png
04-tfvars.png
05-cli-override.png
```

Total Screenshots: 5

---

## What I Learned

- Terraform Data Sources
- Reading existing files
- Using variables with Data Sources
- Using outputs
- Using terraform.tfvars
- Command-line variable override
- Reading Data Source output