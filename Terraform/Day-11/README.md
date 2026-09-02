# Day 11 - Terraform Resource Dependencies

## Practical Overview

In this practical, I learned how Terraform manages dependencies between resources.

## Topics Covered

- Implicit dependencies
- Explicit dependencies
- `depends_on`
- Terraform dependency graph
- Resource creation order
- Dependency verification

## Practical Work

Created two `local_file` resources to understand how Terraform handles resource dependencies.

### Explicit Dependency

An explicit dependency was created using the `depends_on` meta-argument:

    depends_on = [
      local_file.first
    ]

This tells Terraform that `local_file.second` depends on `local_file.first`.

### Implicit Dependency

An implicit dependency was created by directly referencing an attribute of another resource:

    content = "The first file is: ${local_file.first.filename}"

Terraform automatically detects this relationship and creates the dependency.

### Dependency Graph

The dependency relationship was verified using:

    terraform graph

The output showed:

    local_file.second -> local_file.first

This confirms that `local_file.second` depends on `local_file.first`.

## Verification

The configuration was verified using:

    terraform plan

The final plan returned:

    No changes. Your infrastructure matches the configuration.

This confirmed that the infrastructure matched the Terraform configuration.

## Screenshots

1. `01-dependency-plan.png` - Explicit dependency plan
2. `02-explicit-dependency-created.png` - Explicit dependency resources created
3. `03-implicit-dependency-plan.png` - Implicit dependency plan
4. `04-implicit-dependency-result.png` - Implicit dependency result
5. `05-dependency-graph.png` - Terraform dependency graph

## What I Learned

- How Terraform manages resource dependencies
- Difference between implicit and explicit dependencies
- How the `depends_on` meta-argument works
- How Terraform automatically detects implicit dependencies
- How Terraform determines resource creation order
- How to view dependencies using `terraform graph`
- How to verify the final Terraform state