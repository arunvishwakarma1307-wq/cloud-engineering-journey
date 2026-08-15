# Day 40 - Kubernetes Horizontal Pod Autoscaler (HPA)

## Objective

* Understand Horizontal Pod Autoscaler (HPA).
* Configure automatic Pod scaling based on CPU utilization.
* Understand minimum and maximum replica limits.
* Observe automatic scale-up.
* Observe automatic scale-down.

---

## Practical Implementation

### 1. Enable Metrics Server

Enabled the Minikube Metrics Server required for HPA CPU-based scaling.

---

### 2. Create HPA Target Deployment

Created a Deployment named:

```text
hpa-demo
```

The Deployment used the `nginx:1.27` image with a CPU request of `100m` and CPU limit of `200m`.

---

### 3. Create Horizontal Pod Autoscaler

Created an HPA for the `hpa-demo` Deployment with:

```text
Minimum replicas: 1
Maximum replicas: 5
CPU target: 50%
```

---

### 4. Test Automatic Scale-Up

Generated CPU load on the Pod.

The HPA detected high CPU utilization:

```text
CPU: 200% / 50%
```

and automatically increased the replicas:

```text
1 → 4
```

**Screenshot:** `01-hpa-scaling.png`

---

### 5. Test Automatic Scale-Down

Stopped the CPU load and allowed the HPA to reduce the workload.

The replicas were automatically reduced:

```text
4 → 1
```

Final CPU utilization was:

```text
0% / 50%
```

**Screenshot:** `02-hpa-scale-down.png`

---

## Outcome

Successfully configured and tested a Kubernetes Horizontal Pod Autoscaler.

The HPA automatically increased replicas when CPU utilization exceeded the target and reduced replicas after the CPU load decreased.

---

## Key Concepts Learned

* Horizontal Pod Autoscaler (HPA)
* CPU-based autoscaling
* Minimum replicas
* Maximum replicas
* HPA target utilization
* Automatic scale-up
* Automatic scale-down
* Metrics Server

# Screenshots

1. `01-hpa-scaling.png`
2. `02-hpa-scale-down.png`