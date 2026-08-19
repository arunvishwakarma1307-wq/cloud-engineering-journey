# Day 44 - Kubernetes ValidatingAdmissionPolicy

## Objective

- Understand Kubernetes ValidatingAdmissionPolicy.
- Understand ValidatingAdmissionPolicyBinding.
- Validate Pod creation requests.
- Reject Pods that do not contain the required label.
- Allow Pods that satisfy the admission policy.

## ValidatingAdmissionPolicy

A ValidatingAdmissionPolicy allows Kubernetes to validate API requests before the resource is created or updated.

In this practical, the policy checks whether a Pod contains an `app` label.

The policy was named:

`require-app-label`

## Policy Validation

The policy uses the following validation expression:

```text
has(object.metadata.labels) && has(object.metadata.labels.app)
```

This checks whether the Pod has an `app` label.

If the label is missing, the validation fails.

## ValidatingAdmissionPolicyBinding

Creating the policy alone does not activate it for requests.

A `ValidatingAdmissionPolicyBinding` was created:

`require-app-label-binding`

The binding connects the policy to Pod creation requests and uses the `Deny` validation action.

## Admission Test 1 - Pod Without Required Label

A Pod was created without an `app` label.

The admission policy rejected the request.

Result:

```text
Pod must have an 'app' label.
```

Screenshot:

`01-admission-denied.png`

This proves that the admission policy can reject an invalid Pod creation request.

## Admission Test 2 - Pod With Required Label

A second Pod was created with:

```yaml
labels:
  app: demo
```

The Pod was successfully created and reached:

```text
1/1 Running
```

Screenshot:

`02-admission-allowed.png`

This proves that a Pod satisfying the admission policy is allowed.

## Admission Flow

```text
kubectl apply
      ↓
Kubernetes API Server
      ↓
ValidatingAdmissionPolicy
      ↓
ValidatingAdmissionPolicyBinding
      ↓
Validation
   ↙       ↘
FAIL       PASS
 ↓          ↓
Deny      Create Pod
```

## Policy Components

### ValidatingAdmissionPolicy

Defines the validation rule.

### ValidatingAdmissionPolicyBinding

Connects the policy to resources and specifies the action to take when validation fails.

### Validation Expression

Checks whether the Pod contains the required `app` label.

## Outcome

Successfully created and tested a Kubernetes ValidatingAdmissionPolicy.

The practical demonstrated both:

- Admission rejection of an invalid Pod.
- Admission acceptance of a valid Pod.

## Key Concepts Learned

- ValidatingAdmissionPolicy
- ValidatingAdmissionPolicyBinding
- Admission control
- Validation expressions
- CEL expression
- Deny action
- API request validation
- Pod admission
- Policy-based resource validation

## Screenshots

1. `01-admission-denied.png`
2. `02-admission-allowed.png`

