# Day 34 - Kubernetes StatefulSet and Headless Service

## Objective

Learn how Kubernetes StatefulSets provide stable Pod identities and how Headless Services enable network discovery for StatefulSet Pods.

---

## Practical Implementation

### Screenshot 1 - Headless Service

Created a Headless Service using `clusterIP: None`.

Verified that the Service does not receive a normal ClusterIP.

### Screenshot 2 - StatefulSet Created

Created a StatefulSet with two replicas using the NGINX image.

### Screenshot 3 - StatefulSet Pods

Verified that the StatefulSet created two Pods with stable ordinal names:

```text
stateful-demo-0
stateful-demo-1
```

### Screenshot 4 - Stateful Pod Identity

Used the wide Pod listing to inspect the Pods and their network information.

### Screenshot 5 - Stateful Pod Details

Inspected `stateful-demo-0` and verified that it is controlled by the StatefulSet.

### Screenshot 6 - StatefulSet Status

Verified that both StatefulSet replicas were ready.

```text
READY: 2/2
```

### Screenshot 7 - Pod Management Policy

Inspected the StatefulSet configuration and verified the default:

```text
podManagementPolicy: OrderedReady
```

This means StatefulSet Pods are managed in an ordered manner.

### Screenshot 8 - Pod Recreation

Deleted `stateful-demo-0` and verified that the StatefulSet recreated the Pod with the same stable name.

### Screenshot 9 - Service Endpoints

Checked the Headless Service endpoints and verified that it points to the StatefulSet Pods.

### Screenshot 10 - StatefulSet DNS

Used a temporary BusyBox Pod to test DNS resolution.

The StatefulSet Service resolved to the IP addresses of both StatefulSet Pods.

### Screenshot 11 - Final Overview

Verified the final status of the StatefulSet, Headless Service, and StatefulSet Pods.

---

## Key Concepts Learned

### StatefulSet

A StatefulSet is a Kubernetes workload controller designed for applications that require stable identity and predictable Pod management.

Unlike normal Deployment Pods, StatefulSet Pods have stable names:

```text
stateful-demo-0
stateful-demo-1
```

---

### Stable Pod Identity

If `stateful-demo-0` is deleted, the StatefulSet recreates it using the same ordinal name.

```text
stateful-demo-0
       ↓
    Deleted
       ↓
Recreated as
       ↓
stateful-demo-0
```

---

### Headless Service

A Headless Service uses:

```yaml
clusterIP: None
```

Instead of providing a single virtual ClusterIP, it allows DNS-based discovery of the individual Pods.

---

### DNS Discovery

The Headless Service resolved as:

```text
stateful-demo.default.svc.cluster.local
```

and returned the IP addresses of the StatefulSet Pods.

---

### OrderedReady

The StatefulSet used:

```text
podManagementPolicy: OrderedReady
```

This provides ordered management of StatefulSet Pods.

---

## StatefulSet Architecture

```text
Headless Service
       ↓
   StatefulSet
    ↙       ↘
Pod-0       Pod-1
```

Each Pod receives a stable ordinal identity.

---

## Important Note

The `dns-test` Pod was used only as a temporary DNS testing Pod. The StatefulSet and Headless Service were kept intact after the practical.

---

## Screenshots

- 01-headless-service.png
- 02-statefulset-created.png
- 03-stateful-pods.png
- 04-stateful-pod-identity.png
- 05-stateful-pod-details.png
- 06-statefulset-status.png
- 07-statefulset-pod-management.png
- 08-stateful-pod-recreated.png
- 09-stateful-service-endpoints.png
- 10-stateful-dns.png
- 11-statefulset-final-overview.png

**Total Screenshots: 11**

---

## Outcome

Successfully created and inspected a StatefulSet with a Headless Service, verified stable Pod identities, ordered Pod management, service endpoints, and DNS-based discovery.