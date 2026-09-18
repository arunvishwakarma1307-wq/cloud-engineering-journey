# Day 27 - Terraform Dependency Graph

## Practical Summary

In this practical, I learned how Terraform represents resource dependencies using the `terraform graph` command.

A Terraform configuration was created with three `local_file` resources:

first
  ↓
second
  ↓
third

The `second` resource depends on `first`, and the `third` resource depends on `second`. Terraform therefore understands the relationship between these resources.

The `terraform graph` command was used to generate the dependency graph in DOT format. The generated graph was saved as `graph.dot`.

Graphviz was then used to convert the DOT file into a visual PNG dependency graph. This made it easier to understand how Terraform represents relationships between resources.

Finally, the configuration was applied successfully and all three files were created.

## Screenshots

1. `01-terraform-graph.png` - Terraform dependency graph in DOT format
2. `02-dependency-graph.png` - Visual dependency graph generated using Graphviz

## Final Result

Terraform successfully generated the dependency graph and represented the relationships between the resources.

The three resources were successfully created:

first.txt
second.txt
third.txt

The practical demonstrated how `terraform graph` can be used to understand and visualize resource dependencies in a Terraform configuration.

## What I Learned

- Terraform dependency graph
- `terraform graph` command
- DOT graph format
- Resource dependency relationships
- Graphviz
- Converting DOT output into a visual graph
- Understanding Terraform resource relationships