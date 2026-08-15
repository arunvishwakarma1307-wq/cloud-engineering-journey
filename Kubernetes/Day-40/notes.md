# Day 40 - Kubernetes Horizontal Pod Autoscaler

## Horizontal Pod Autoscaler

Horizontal Pod Autoscaler (HPA) automatically changes the number of Pod replicas in a workload based on observed resource utilization.

In this practical, CPU utilization was used as the scaling metric.

---

## HPA Flow

```text
CPU Usage
    ↓
Metrics Server
    ↓
HPA
    ↓
Deployment replicas
    ↓
Pods increase/decrease
```

---

## CPU Target

The HPA was configured with a CPU utilization target of:

```text
50%
```

When the observed CPU utilization went significantly above the target, HPA increased the number of replicas.

---

## Minimum and Maximum Replicas

The HPA configuration used:

```text
Min replicas: 1
Max replicas: 5
```

This means HPA could reduce the Deployment to 1 replica and increase it up to 5 replicas.

---

## Scale-Up

CPU load was generated on the `hpa-demo` Pod.

The HPA observed:

```text
200% / 50%
```

and increased the replicas:

```text
1 → 4
```

This demonstrated automatic horizontal scaling.

---

## Scale-Down

After the CPU load was stopped, CPU utilization decreased.

The HPA eventually reduced the replicas:

```text
4 → 1
```

The final state was:

```text
CPU: 0% / 50%
Replicas: 1
```

---

## Metrics Server

HPA requires resource metrics to make CPU-based scaling decisions.

Initially:

```text
kubectl top nodes
```

returned:

```text
Metrics API not available
```

After the Metrics Server became available, CPU metrics could be observed and HPA scaling worked successfully.

---

## HPA vs Manual Scaling

| Feature              | Manual Scaling             | HPA               |
| -------------------- | -------------------------- | ----------------- |
| Replica changes      | Manually configured        | Automatic         |
| CPU-based scaling    | No automatic action        | Supported         |
| Min/Max replicas     | Not automatically enforced | Configured in HPA |
| Response to workload | Manual                     | Automatic         |

---

## Important Observations

* HPA works with a workload such as a Deployment.
* CPU requests are important for CPU utilization-based HPA.
* Metrics Server provides the resource metrics used by HPA.
* HPA can increase replicas when utilization is high.
* HPA can reduce replicas when utilization decreases.
* Scale-down may take some time because Kubernetes avoids immediately removing replicas.
