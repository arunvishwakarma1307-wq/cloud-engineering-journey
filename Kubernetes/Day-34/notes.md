# Day 34 - Kubernetes StatefulSet and Headless Service

## StatefulSet

A StatefulSet manages Pods that require stable identity and predictable management.

It is commonly used for stateful applications such as databases.

---

## Stable Pod Names

StatefulSet Pods receive predictable ordinal names.

Example:

```text
stateful-demo-0
stateful-demo-1
```

If a Pod is deleted, Kubernetes recreates it with the same ordinal identity.

---

## Headless Service

A Headless Service is created by setting:

```yaml
clusterIP: None
```

It does not provide a normal virtual ClusterIP.

Instead, it enables direct discovery of the Pods behind the Service.

---

## StatefulSet and Headless Service

A StatefulSet commonly uses a Headless Service for network identity.

```text
Headless Service
       ↓
StatefulSet
   ↓       ↓
Pod-0   Pod-1
```

---

## OrderedReady

The StatefulSet uses:

```text
podManagementPolicy: OrderedReady
```

This means Pods are managed in ordinal order.

---

## Service Endpoints

The Headless Service maintains endpoints for the StatefulSet Pods.

The endpoints can be checked using:

```text
kubectl get endpoints stateful-demo
```

---

## DNS Discovery

The Service can be resolved through Kubernetes DNS.

Example:

```text
stateful-demo.default.svc.cluster.local
```

The DNS lookup returned the IP addresses of the StatefulSet Pods.

---

## Pod Recreation

Deleting:

```text
stateful-demo-0
```

causes the StatefulSet controller to recreate:

```text
stateful-demo-0
```

The stable identity is preserved.

---

## Deployment vs StatefulSet

| Feature | Deployment | StatefulSet |
|---|---|---|
| Pod Identity | Usually dynamic | Stable |
| Pod Names | Random suffix | Ordered names |
| Stable Network Identity | No | Yes |
| Ordered Management | No | Yes |
| Stateful Applications | Less suitable | Suitable |

---

## What I Learned

- StatefulSet
- Headless Service
- Stable Pod identity
- OrderedReady
- StatefulSet Pod recreation
- Service endpoints
- Kubernetes DNS discovery