# Day 34 - Terraform Provider Schema Inspection

## Terraform Provider Schema

A Terraform provider defines the resources, data sources, attributes, and configuration options that Terraform can use to manage infrastructure.

A provider schema describes the structure and properties supported by a provider.

The schema helps Terraform understand:

- Available resources
- Available data sources
- Resource attributes
- Attribute data types
- Required attributes
- Optional attributes
- Computed attributes
- Attribute descriptions
- Configuration rules

---

## Provider Schema Inspection

Provider schema inspection means examining the schema information exposed by a Terraform provider.

This is useful when learning how a provider works or when understanding the configuration options available for a particular resource or data source.

Terraform can represent provider schema information in JSON format, which makes the structure easier to inspect and process.

---

## Resource Schema

A resource schema describes the structure of a Terraform resource.

For example, the `local_file` resource belongs to the Local provider.

Its schema contains attributes such as:

- `filename`
- `content`
- `content_base64`
- `file_permission`
- `directory_permission`
- `source`
- `id`

Each attribute has information that describes how Terraform handles it.

---

## Attribute Data Types

Provider schemas define the data type of resource attributes.

Common attribute types include:

- `string`
- `number`
- `bool`
- `list`
- `set`
- `map`
- `object`

For example, the `filename` and `content` attributes of the `local_file` resource use the `string` type.

---

## Required Attributes

A required attribute must be provided when configuring a resource.

For example, the `filename` attribute of the `local_file` resource is required because Terraform needs to know the path where the file should be created.

---

## Optional Attributes

An optional attribute does not have to be explicitly provided in every resource configuration.

The provider can use a default behavior or another configuration mechanism when an optional attribute is not specified.

The `content` attribute of the `local_file` resource is defined as optional in the provider schema.

---

## Computed Attributes

A computed attribute is generally calculated or provided by the provider rather than directly specified by the user.

For example, file checksum attributes such as:

- `content_md5`
- `content_sha1`
- `content_sha256`
- `content_sha512`

can be computed from the file content.

---

## Attribute Conflicts

Provider schemas can define relationships between attributes.

Some attributes may conflict with other attributes, meaning they cannot be used together in the same resource configuration.

For the `local_file` resource, `content`, `content_base64`, `sensitive_content`, and `source` have mutually exclusive usage requirements.

This helps Terraform validate resource configurations correctly.

---

## Provider Resources

A provider can expose multiple resources.

Resources represent objects that Terraform can create, update, replace, or delete.

The Local provider exposes resources such as:

- `local_file`
- `local_sensitive_file`

The provider schema contains information about these resources and their supported attributes.

---

## Provider Data Sources

A provider can also expose data sources.

Data sources are used to read or retrieve existing information instead of creating a managed resource.

The Local provider includes data sources such as:

- `local_command`
- `local_file`
- `local_sensitive_file`

Their schemas describe the information that can be read and the attributes required for that operation.

---

## Provider Schema and Validation

Terraform uses provider schema information to understand whether resource configurations are valid.

Schema information helps Terraform determine:

- Whether an attribute exists
- What type of value an attribute accepts
- Whether an attribute is required
- Whether an attribute is optional
- Whether an attribute is computed
- Whether certain attributes conflict with each other

This provides a structured way for Terraform to work with provider resources.

---

## Importance of Provider Schema Inspection

Provider schema inspection is useful for:

- Understanding unfamiliar providers
- Discovering available resources
- Discovering available data sources
- Understanding resource attributes
- Checking attribute data types
- Understanding required and optional configuration
- Troubleshooting Terraform configurations
- Understanding how Terraform communicates with providers

---

## Key Terms

| Term | Meaning |
|---|---|
| Provider | Plugin that allows Terraform to interact with a platform or service |
| Schema | Definition of supported resources, data sources, and attributes |
| Resource | Infrastructure object managed by Terraform |
| Data Source | Information read by Terraform |
| Attribute | Configuration or information field of a resource or data source |
| Required | Attribute that must be provided |
| Optional | Attribute that does not always need to be provided |
| Computed | Value calculated or returned by the provider |
| JSON Schema Output | Structured representation of provider schema information |