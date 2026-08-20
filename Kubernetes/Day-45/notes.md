# Day 45 - Kubernetes ResourceQuota

## What is ResourceQuota?

ResourceQuota is a Kubernetes object used to limit the total amount of resources that can be consumed within a Namespace.

It helps prevent one Namespace from consuming unlimited cluster resources.

## Namespace

The practical used a dedicated Namespace:

```text
quota-demo
```

The ResourceQuota was applied only to this Namespace.

## ResourceQuota Configuration

The quota was named:

```text
compute-quota
```

Configuration:

```yaml
requests.cpu: "500m"
requests.memory: "256Mi"
limits.cpu: "1"
limits.memory: "512Mi"
pods: "3"
```

## CPU Requests

CPU requests represent the amount of CPU requested by Pods.

The configured total request quota was:

```text
500m
```

`500m` means half of one CPU core.

## Memory Requests

The total memory request quota was:

```text
256Mi
```

## CPU Limits

The total CPU limit quota was:

```text
1 CPU
```

## Memory Limits

The total memory limit quota was:

```text
512Mi
```

## Pod Count

The Namespace was limited to:

```text
3 Pods
```

## Successful Resource Allocation

The first Pod used:

```text
requests.cpu: 100m
requests.memory: 64Mi
limits.cpu: 200m
limits.memory: 128Mi
```

After the Pod was created, quota usage became:

```text
pods: 1/3
requests.cpu: 100m/500m
requests.memory: 64Mi/256Mi
limits.cpu: 200m/1
limits.memory: 128Mi/512Mi
```

This demonstrates that the Pod was successfully created while remaining within the configured quota.

## Quota Exceeded

The second Pod requested:

```text
requests.cpu: 500m
requests.memory: 256Mi
```

Combined with the existing usage:

```text
CPU:
100m + 500m = 600m
```

The total would exceed the configured:

```text
500m
```

CPU request quota.

Memory would also become:

```text
64Mi + 256Mi = 320Mi
```

which exceeds the configured:

```text
256Mi
```

memory request quota.

Therefore, Kubernetes rejected the Pod.

## Rejection

The API server returned:

```text
exceeded quota: compute-quota
```

This proves that ResourceQuota is enforced when resources are requested.

## ResourceQuota Flow

```text
Pod creation request
        ↓
Namespace quota check
        ↓
Calculate current usage
        ↓
Compare requested resources
        ↓
   ┌────┴────┐
   ↓         ↓
Within     Exceeds
quota      quota
   ↓         ↓
Allow      Reject
```

## Important Points

- ResourceQuota works at Namespace level.
- Resource requests and limits contribute to quota usage.
- Pod count can also be restricted.
- Kubernetes rejects resource creation when the configured quota would be exceeded.
- ResourceQuota helps provide fair resource allocation between Namespaces.

## Key Learning

ResourceQuota provides a mechanism for controlling and limiting resource consumption within Kubernetes Namespaces.