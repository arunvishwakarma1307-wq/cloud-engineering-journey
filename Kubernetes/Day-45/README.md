# Day 45 - Kubernetes ResourceQuota

## Objective

- Understand Kubernetes ResourceQuota.
- Limit resource consumption at Namespace level.
- Configure CPU and memory request limits.
- Configure CPU and memory limit limits.
- Configure maximum Pod count.
- Observe quota usage.
- Test rejection when a Pod exceeds the available quota.

## ResourceQuota

A Kubernetes ResourceQuota limits the total amount of resources that can be consumed by objects inside a Namespace.

In this practical, a dedicated Namespace was created:

`quota-demo`

A ResourceQuota named:

`compute-quota`

was configured.

## Resource Limits

The ResourceQuota was configured with:

```yaml
requests.cpu: "500m"
requests.memory: "256Mi"
limits.cpu: "1"
limits.memory: "512Mi"
pods: "3"
```

This means the Namespace can use up to:

- 500m CPU requests
- 256Mi memory requests
- 1 CPU limit
- 512Mi memory limits
- 3 Pods

## Pod Within Quota

A Pod named:

`quota-pod-1`

was created with resource requests and limits.

The Pod successfully reached:

```text
1/1 Running
```

The ResourceQuota usage increased to:

```text
pods: 1/3
requests.cpu: 100m/500m
requests.memory: 64Mi/256Mi
limits.cpu: 200m/1
limits.memory: 128Mi/512Mi
```

Screenshot:

`01-resourcequota-usage.png`

## Quota Exceed Test

A second Pod was configured with:

```text
requests.cpu: 500m
requests.memory: 256Mi
```

The existing Pod was already consuming:

```text
requests.cpu: 100m
requests.memory: 64Mi
```

Therefore, creating the second Pod would exceed the Namespace quota.

Kubernetes rejected the request with:

```text
exceeded quota: compute-quota
```

Screenshot:

`02-resourcequota-denied.png`

## ResourceQuota Flow

```text
Namespace
    ↓
ResourceQuota
    ↓
Resource limits defined
    ↓
Pod creation request
    ↓
Quota check
   ↙        ↘
Within     Exceeds
quota      quota
 ↓           ↓
Allow      Reject
 ↓           ↓
Running    Forbidden
```

## Outcome

Successfully created and tested a Kubernetes ResourceQuota.

The practical demonstrated both successful resource allocation within the configured quota and rejection of a Pod that would exceed the available CPU and memory request quota.

## Key Concepts Learned

- ResourceQuota
- Namespace-level resource limits
- CPU requests
- Memory requests
- CPU limits
- Memory limits
- Pod count quota
- Quota usage
- ResourceQuota rejection

## Screenshots

1. `01-resourcequota-usage.png`
2. `02-resourcequota-denied.png`

