# Day 39 - Kubernetes Resource Requests, Limits and QoS

## Resource Requests

Resource requests define the minimum amount of CPU and memory that Kubernetes considers when scheduling a Pod.

Example:

```yaml
requests:
  cpu: "200m"
  memory: "96Mi"
```

The scheduler uses these values to determine whether a Node has enough available resources for the Pod.

---

## Resource Limits

Resource limits define the maximum amount of CPU and memory a container is allowed to use.

Example:

```yaml
limits:
  cpu: "500m"
  memory: "256Mi"
```

Limits help prevent a container from consuming unlimited resources.

---

## CPU Units

Kubernetes represents CPU using units such as:

```text
100m = 0.1 CPU
200m = 0.2 CPU
500m = 0.5 CPU
```

The `m` represents millicpu.

---

## Memory Units

Memory can be specified using units such as:

```text
64Mi
96Mi
128Mi
256Mi
```

`Mi` represents mebibytes.

---

## Requests vs Limits

```text
Requests
   ↓
Minimum resources considered for scheduling

Limits
   ↓
Maximum resources allowed for the container
```

---

## Kubernetes QoS Class

Kubernetes assigns a Quality of Service (QoS) class to Pods based on their resource configuration.

Common QoS classes are:

```text
Guaranteed
Burstable
BestEffort
```

---

## Burstable QoS

The `resource-demo` Pod received:

```text
QoS Class: Burstable
```

because CPU and memory requests and limits were configured, but the request and limit values were different.

Example:

```text
CPU:
Request = 200m
Limit   = 500m

Memory:
Request = 96Mi
Limit   = 256Mi
```

---

## Metrics API

The command:

```text
kubectl top pod resource-demo
```

returned:

```text
Metrics API not available
```

This means the Metrics API was not available in the current Minikube cluster. This did not prevent resource requests, limits, or QoS configuration from working.

---

## Important Observations

* Requests influence Pod scheduling.
* Limits define the maximum resource allocation for a container.
* CPU can be specified in millicpu units.
* Memory can be specified using units such as Mi.
* Kubernetes automatically assigns a QoS class based on resource configuration.
* The `resource-demo` Pod was classified as `Burstable`.
* Resource configuration can be changed by updating the Pod manifest and recreating the Pod.
