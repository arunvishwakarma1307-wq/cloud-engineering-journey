# Day 25 - Terraform Variable Validation and Dynamic Blocks

## 1. Terraform Variable Validation

Terraform variables can have validation rules to make sure that only correct values are accepted.

Validation is written inside a variable block using the validation block.

Example:

variable "environment" {
  type    = string
  default = "dev"

  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "Environment must be dev, staging, or prod."
  }
}

Here, only these values are allowed:

- dev
- staging
- prod

If another value is provided, Terraform shows a validation error.

### Why Variable Validation is Useful

Variable validation helps to:

- Prevent incorrect input
- Reduce configuration mistakes
- Keep variable values within allowed options
- Make Terraform configurations safer and easier to use

---

## 2. Dynamic Blocks

A Dynamic Block is used to create repeated nested blocks automatically.

Instead of writing the same nested block many times, Terraform can generate the blocks from a collection of values.

Basic structure:

dynamic "block_name" {
  for_each = collection

  content {
    # block configuration
  }
}

### How Dynamic Blocks Work

The main parts are:

- dynamic - tells Terraform to create the nested block dynamically.
- for_each - goes through the collection.
- content - contains the configuration of each generated block.

Example:

dynamic "ingress" {
  for_each = var.security_rules

  content {
    from_port   = ingress.value.from_port
    to_port     = ingress.value.to_port
    protocol    = ingress.value.protocol
    cidr_blocks = ["0.0.0.0/0"]
  }
}

If the collection contains two rules, Terraform generates two ingress blocks.

### Dynamic Block vs for_each

for_each is commonly used to create multiple resources.

A Dynamic Block uses for_each to create multiple nested blocks inside a resource.

For example:

for_each
   ↓
Multiple resources

Whereas:

dynamic block
   ↓
for_each
   ↓
Multiple nested blocks

### Benefits of Dynamic Blocks

Dynamic Blocks are useful when:

- A resource has repeated nested configuration
- The number of nested blocks can change
- Configuration should be generated from a list or map
- Repeating the same block manually would make the code longer

---

## Key Points

### Variable Validation

- Checks whether a variable value is valid
- Uses a validation block
- Uses a condition to allow or reject values
- Shows a custom error message for invalid values

### Dynamic Blocks

- Generate repeated nested blocks
- Use for_each with a collection
- Use content for the generated block configuration
- Help reduce repeated Terraform code