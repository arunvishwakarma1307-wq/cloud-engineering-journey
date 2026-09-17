# Day 26 - Terraform Console

## Practical Summary

In this practical, I learned about the Terraform Console and how it can be used to interactively test Terraform expressions and inspect values from a Terraform configuration.

I started the Terraform Console and tested basic expressions such as mathematical calculations and string operations. I also practiced Terraform built-in functions like `upper()`, `length()`, and `join()`.

The practical also covered accessing Terraform variables and local values directly from the console. I tested list indexing and map/object value access to understand how Terraform handles different types of data.

To understand the practical use of Terraform Console, a `local_file` resource was created. Its content and filename attributes were then inspected directly through the console. This demonstrated how Terraform Console can help check and debug values without repeatedly modifying the configuration.

Finally, the Terraform configuration was validated and the final plan was checked to confirm that the configuration was working correctly.

## Screenshots

1. `01-console-expression.png` - Basic expression testing in Terraform Console
2. `02-console-functions.png` - Terraform built-in function testing
3. `03-console-resource-attribute.png` - Inspecting the resource content
4. `04-console-resource-filename.png` - Inspecting the resource filename
5. `05-final-plan.png` - Final Terraform plan verification

## Final Result

Terraform Console was successfully used to test expressions, work with variables and local values, inspect different data types, and check resource attributes.

The `local_file` resource was successfully created and its values were inspected through Terraform Console.

## What I Learned

- Terraform Console
- Interactive expression testing
- Terraform functions
- Variables and locals
- Lists and maps
- Resource attribute inspection
- Basic Terraform debugging