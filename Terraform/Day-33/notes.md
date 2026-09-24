# Day 33 - Terraform Targeted Resource Operations

## Terraform Resource Targeting

Terraform normally evaluates the complete configuration and determines the required actions for all resources.

Resource targeting allows Terraform to focus on a specific resource or resource instance.

Targeting is controlled using the `-target` option.

## Target Resource

A Terraform resource is identified using its resource address.

For example:

```text
local_file.first
```

Here:

- `local_file` is the resource type.
- `first` is the resource name.

The resource address identifies the specific resource Terraform should focus on.

## Targeted Operations

Terraform supports targeted planning and application.

Targeted planning focuses the planning process on the selected resource.

Targeted application applies the selected operation to the targeted resource.

The target resource can be a resource instance or another supported Terraform address.

## Normal Terraform Workflow

Normally, Terraform evaluates the complete configuration.

```text
Terraform Configuration
        ↓
Terraform Plan
        ↓
Evaluate Required Changes
        ↓
Terraform Apply
        ↓
Infrastructure Updated
```

This is the standard workflow for managing infrastructure.

## Targeted Terraform Workflow

Targeting narrows the operation to a specific resource.

```text
Terraform Configuration
        ↓
Select Resource
        ↓
Targeted Plan
        ↓
Review
        ↓
Targeted Apply
```

Resources outside the target may remain unchanged or pending.

## `-target`

The `-target` option tells Terraform to focus on a particular resource address.

Conceptually:

```text
-target="resource.address"
```

For example:

```text
local_file.first
```

Targeting can be used with planning and application operations.

## Targeting and Dependencies

Terraform understands relationships between resources.

When a targeted resource has dependencies, Terraform may also need to consider those dependencies to perform the operation correctly.

Therefore, targeting does not simply mean that Terraform completely ignores every other resource.

## Targeting and Remaining Resources

When only one resource is targeted, other resources required by the configuration may remain unmanaged or pending.

A later normal Terraform plan can identify those remaining differences.

This is important because a targeted operation does not necessarily represent the complete desired infrastructure state.

## Targeting vs Normal Operations

| Feature | Normal Operation | Targeted Operation |
|---|---|---|
| Scope | Complete configuration | Specific target |
| Resource evaluation | Broad | Focused |
| Main purpose | Normal infrastructure management | Specific or exceptional situations |
| Remaining resources | Evaluated normally | May remain pending |
| Recommended workflow | Standard approach | Use carefully |

## Appropriate Uses

Resource targeting can be useful in specific situations such as:

- Troubleshooting
- Recovery operations
- Debugging resource behavior
- Working with a specific resource
- Exceptional infrastructure situations
- Investigating dependency behavior

## Limitations

Targeting can produce a partial infrastructure operation.

Because the complete configuration may not be evaluated in the same way as a normal operation, other resources can remain pending.

Repeatedly using targeted operations can make infrastructure management harder to understand and maintain.

## Important Safety Considerations

Targeting should be used carefully because it can cause Terraform to perform only part of the changes represented by the configuration.

Before using targeting, the planned actions should be reviewed carefully.

After a targeted operation, a normal Terraform plan can be used to verify whether any configuration changes remain.

## Best Practice

The normal Terraform workflow should generally be preferred for regular infrastructure management.

Targeting should mainly be considered for specific exceptional situations where focusing on a particular resource is necessary.

After using targeting, the complete Terraform configuration should be reviewed again to ensure that no required changes remain.

## Important Points

- Terraform normally evaluates the complete configuration.
- Resource targeting focuses on a specific resource.
- Terraform resource addresses identify target resources.
- The `-target` option is used for targeted operations.
- Targeting can be used with planning and application.
- Dependencies can still affect targeted operations.
- Other resources may remain pending after a targeted operation.
- Normal Terraform plans can identify remaining changes.
- Targeting should not replace the normal Terraform workflow.
- Targeted operations should be used carefully.

## Key Terms

- Terraform Resource Targeting
- `-target`
- Resource Address
- Targeted Plan
- Targeted Apply
- Terraform Dependencies
- Normal Terraform Workflow
- Partial Infrastructure Operation
- Resource Management
- Terraform Plan
```