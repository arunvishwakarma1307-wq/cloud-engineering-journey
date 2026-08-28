# Day 06 - Terraform Data Sources

## Data Source

A Data Source allows Terraform to read information from an existing resource.

In this practical, the `local_file` Data Source was used to read an existing text file.

## Existing File

The file `existing.txt` was created with the content:

```text
This file already exists
```

## Variable

The filename was made configurable using the `file_name` variable.

Default value:

```text
existing.txt
```

## Data Source

The Data Source used the variable to determine which existing file should be read.

## Output

The file content was exposed through the `existing_file_content` output.

## Terraform.tfvars

The variable value was provided through `terraform.tfvars`:

```hcl
file_name = "existing.txt"
```

## Variable Override

A second existing file named `second.txt` was created.

Its content was:

```text
This is the second existing file
```

The variable was then overridden from the command line using:

```text
-var="file_name=second.txt"
```

The Data Source then read the content of the second file.

## Key Point

Data Sources read existing information. They do not create a new resource.