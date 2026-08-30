# Day 08 - Terraform Conditional Expressions & Functions

## 1. Conditional Expressions

Terraform conditional expressions are used to select one of two values based on a condition.

Syntax:

```text
condition ? true_value : false_value
```

Example:

```hcl
var.environment == "prod" ? "Production Environment" : "Non-Production Environment"
```

If the condition is true:

```text
Production Environment
```

If the condition is false:

```text
Non-Production Environment
```

Conditional expressions are useful for making Terraform configurations dynamic.

---

## 2. Terraform Variables

Terraform variables are used to make configuration values flexible and reusable.

Example:

```hcl
variable "environment" {
  type    = string
  default = "dev"
}
```

A variable value can also be overridden from the command line:

```text
-var="environment=prod"
```

This allows the same Terraform configuration to be used with different environments.

---

## 3. Local Values

Local Values are named values defined inside a Terraform configuration and can be reused throughout the configuration.

Example:

```hcl
locals {
  project_name = "terraform"
  environment  = "learning"
}
```

Local Values are referenced using:

```text
local.project_name
local.environment
```

Locals help avoid repeating the same values and make Terraform configurations easier to maintain.

---

## 4. Terraform Built-in Functions

Terraform provides built-in functions that can be used to transform values, manipulate strings, work with collections, and perform calculations.

In this practical, the following functions were used:

- `upper()`
- `lower()`
- `length()`
- `join()`

---

## 5. upper() Function

The `upper()` function converts all characters in a string to uppercase.

Example:

```text
upper("terraform")
```

Result:

```text
"TERRAFORM"
```

---

## 6. lower() Function

The `lower()` function converts all characters in a string to lowercase.

Example:

```text
lower("CLOUD ENGINEERING")
```

Result:

```text
"cloud engineering"
```

---

## 7. length() Function

The `length()` function returns the length of a string or the number of elements in a collection.

Example:

```text
length("terraform")
```

Result:

```text
9
```

For a list, `length()` returns the number of elements in that list.

---

## 8. join() Function

The `join()` function combines multiple strings into a single string using a specified separator.

Syntax:

```text
join(separator, list)
```

Example:

```text
join("-", ["terraform", "day", "08"])
```

Result:

```text
"terraform-day-08"
```

In this example, `-` is used as the separator.

---

## 9. Combining Functions with Local Values

Terraform functions can be combined with Local Values.

Example:

```hcl
locals {
  project_name = "terraform"

  project_label = join("-", [
    local.project_name,
    "day",
    "08"
  ])

  uppercase_environment = upper(var.environment)
}
```

This allows variables, Local Values, functions, and conditional expressions to work together in the same configuration.

---

## 10. Terraform Console

`terraform console` provides an interactive environment for evaluating Terraform expressions.

It can be used to test functions and Local Values before using them in a configuration.

Examples:

```text
upper("terraform")
lower("CLOUD ENGINEERING")
length("terraform")
join("-", ["terraform", "day", "08"])
```

---

## Key Points

- Conditional expressions select values based on a condition.
- Variables make Terraform configurations flexible and reusable.
- Local Values store reusable named values.
- `upper()` converts strings to uppercase.
- `lower()` converts strings to lowercase.
- `length()` returns the length of a string or collection.
- `join()` combines strings using a separator.
- Terraform functions can be combined with Local Values and variables.
- `terraform console` is useful for testing Terraform expressions interactively.