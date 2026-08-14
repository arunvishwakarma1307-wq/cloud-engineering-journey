# Day 39 - Kubernetes Resource Requests, Limits and QoS

## Objective

* Understand Kubernetes resource requests.
* Understand Kubernetes resource limits.
* Configure CPU and memory resources for a Pod.
* Understand Kubernetes QoS Class.
* Verify how resource configuration affects Pod QoS.

---

## Practical Implementation

### 1. Create Resource Configured Pod

Created a Pod named `resource-demo` using the `nginx:1.27` image.

Configured initial resource requests and limits:

```text
Requests:
CPU: 100m
Memory: 64Mi

Limits:
CPU: 250m
Memory: 128Mi
```

**Screenshot:** `01-resource-requests-limits.png`

---

### 2. Update Resource Requests and Limits

Updated the Pod configuration with new resource values:

```text
Requests:
CPU: 200m
Memory: 96Mi

Limits:
CPU: 500m
Memory: 256Mi
```

The Pod was recreated and the updated configuration was verified successfully.

**Screenshot:** `02-resource-limits-updated.png`

---

### 3. Verify Pod QoS Class

Checked the QoS class assigned by Kubernetes.

The Pod was assigned:

```text
Burstable
```

This happened because resource requests and limits were configured but they were not equal.

**Screenshot:** `03-resource-qos-class.png`

---

## Outcome

Successfully configured CPU and memory requests and limits for a Kubernetes Pod and verified its QoS class as `Burstable`.

---

## Key Concepts Learned

* Resource Requests
* Resource Limits
* CPU Requests and Limits
* Memory Requests and Limits
* Pod Resource Configuration
* Kubernetes QoS Classes
* Burstable QoS

## Screenshot

1. `01-resource-requests-limits.png`
2. `02-resource-limits-updated.png`
3. `03-resource-qos-class.png`

