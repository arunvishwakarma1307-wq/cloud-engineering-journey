# Day 44 - Kubernetes ValidatingAdmissionPolicy

## What is Admission Control?

Admission control happens after a Kubernetes API request is authenticated and authorized but before the requested resource is persisted.

```text
API Request
    ↓
Authentication
    ↓
Authorization
    ↓
Admission Control
    ↓
Resource Created
```

Admission controllers can validate or modify Kubernetes resources.

## ValidatingAdmissionPolicy

`ValidatingAdmissionPolicy` provides a way to validate Kubernetes API requests using policy rules.

In this practical, the policy checked whether a Pod contained an `app` label.

Policy name:

```text
require-app-label
```

## Validation Expression

The policy used:

```text
has(object.metadata.labels) && has(object.metadata.labels.app)
```

Meaning:

- Check whether labels exist.
- Check whether the `app` label exists.
- If the condition is false, validation fails.

## ValidatingAdmissionPolicyBinding

A policy needs a binding to determine where and how it is applied.

Binding name:

```text
require-app-label-binding
```

The binding referenced:

```text
require-app-label
```

and used:

```yaml
validationActions:
  - Deny
```

Therefore, a Pod that failed the validation was rejected.

## Invalid Pod

The first test Pod did not contain an `app` label.

```yaml
metadata:
  name: no-label-pod
```

The admission policy rejected the creation request.

Result:

```text
Pod must have an 'app' label.
```

## Valid Pod

The second test Pod contained:

```yaml
labels:
  app: demo
```

The request passed validation.

The Pod was successfully created and reached:

```text
1/1 Running
```

## Validation Flow

```text
Pod CREATE request
       ↓
ValidatingAdmissionPolicy
       ↓
Check app label
       ↓
   ┌───┴───┐
   ↓       ↓
Missing   Present
   ↓       ↓
 Deny    Allow
   ↓       ↓
Error    Pod created
```

## CEL

The validation expression used by the policy is written using CEL.

CEL stands for:

```text
Common Expression Language
```

CEL expressions allow Kubernetes admission policies to evaluate resource fields.

## Important Difference

`ValidatingAdmissionPolicy`:

- Validates requests.
- Can reject invalid resources.
- Does not modify the resource.

A mutating admission mechanism can modify a resource before it is stored.

## Key Learning

- Admission control occurs before resource persistence.
- ValidatingAdmissionPolicy defines validation rules.
- ValidatingAdmissionPolicyBinding activates the policy for selected resources.
- CEL expressions are used for validation.
- `Deny` rejects requests that fail validation.
- Valid resources continue through the Kubernetes API process.