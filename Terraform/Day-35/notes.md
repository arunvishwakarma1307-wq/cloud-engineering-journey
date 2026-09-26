# Day 35 - Terraform Machine-Readable JSON Plan

## Terraform Plan

Terraform Plan is used to preview the changes Terraform intends to make to the infrastructure.

The plan contains information about resources that Terraform wants to create, modify, or destroy.

---

## Machine-Readable Plan

Terraform plans can be represented in a machine-readable format so that other tools and automation systems can process the plan.

Machine-readable plans are useful when Terraform information needs to be consumed by scripts, CI/CD pipelines, monitoring systems, or other automation tools.

---

## Terraform Plan JSON

Terraform can represent a saved plan as JSON.

The JSON representation contains structured information about the Terraform plan, including resource changes, planned actions, and resource attributes.

This allows specific information to be extracted programmatically instead of manually reading the complete Terraform plan.

---

## Resource Changes

The JSON plan contains information about resources that are affected by the planned operation.

A resource change can contain information such as:

- Resource address
- Planned actions
- Previous resource values
- Planned resource values
- Resource-related change information

---

## Planned Actions

Terraform plan JSON can identify the action that Terraform intends to perform on a resource.

Common actions include:

- `create`
- `update`
- `delete`

Some resource changes can contain combinations of actions when Terraform needs to replace a resource.

---

## Planned Resource Attributes

The JSON representation can contain the planned values of resource attributes.

For example, a resource's planned filename or content can be accessed from the structured plan data.

This makes it possible to inspect individual values without manually searching through the complete human-readable plan.

---

## Human-Readable vs Machine-Readable Plan

Terraform provides both human-readable and machine-readable representations of a plan.

| Human-Readable Plan | Machine-Readable JSON Plan |
|---|---|
| Designed for people | Designed for automation |
| Easy to read in the terminal | Easy to process programmatically |
| Useful for manual review | Useful for scripts and CI/CD |
| Displays formatted Terraform changes | Provides structured plan data |

---

## Use in Automation

Machine-readable Terraform plans are useful in automated infrastructure workflows.

A CI/CD system can process plan information and use it for tasks such as:

- Checking planned resource changes
- Detecting specific actions
- Extracting resource information
- Generating automated reports
- Applying policy or approval rules
- Integrating Terraform with other automation systems

---

## Important Concept

A Terraform JSON plan is **not a replacement for the Terraform configuration**.

It is a structured representation of a Terraform plan that can be inspected and processed by other tools.

The configuration defines the desired infrastructure, while the plan describes the changes Terraform intends to make to reach that desired state.

---

## Key Points

- Terraform Plan previews infrastructure changes.
- Terraform plans can be represented in JSON format.
- JSON plans are machine-readable.
- Resource changes contain information about planned operations.
- Planned actions describe what Terraform intends to do.
- Planned resource attributes can be inspected programmatically.
- Machine-readable plans are useful for automation and CI/CD workflows.