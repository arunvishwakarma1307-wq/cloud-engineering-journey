# Day 37 - Kubernetes DaemonSet

## DaemonSet

A DaemonSet ensures that a copy of a Pod runs on all nodes that match its scheduling requirements.

It is commonly used for node-level services such as logging agents, monitoring agents, and security agents.

---

## DaemonSet and Nodes

A DaemonSet creates one Pod on each eligible node.

Example:

```text id="j1n0ts"
Node-1 → DaemonSet Pod
Node-2 → DaemonSet Pod
Node-3 → DaemonSet Pod
```

In the Minikube cluster used in this practical, there was one node:

```text id="d4v0ap"
minikube → node-agent Pod
```

---

## DaemonSet Pod Identity

DaemonSet Pods do not have stable names like StatefulSet Pods.

Example:

```text id="i6e5ak"
node-agent-fmcwd
node-agent-jzdvq
```

When a Pod is deleted, the DaemonSet creates a replacement Pod.

---

## Self-Healing

If a DaemonSet-managed Pod is deleted, the DaemonSet controller automatically creates another Pod on the node.

```text id="2m8u0d"
DaemonSet
    ↓
Pod deleted
    ↓
Controller detects missing Pod
    ↓
New Pod created
```

---

## Rolling Update

A DaemonSet can update its Pods when the Pod template changes.

In this practical, the NGINX image was updated from:

```text id="8d1w6y"
nginx:1.27
```

to:

```text id="q0r2xm"
nginx:1.28
```

The rollout was monitored until the updated Pod became ready.

---

## DaemonSet Status

Important status fields include:

```text id="1x3z7f"
DESIRED
CURRENT
READY
UP-TO-DATE
AVAILABLE
```

These fields help verify whether the DaemonSet is successfully managing its Pods.

---

## Deployment vs DaemonSet

| Feature           | Deployment            | DaemonSet                 |
| ----------------- | --------------------- | ------------------------- |
| Pod distribution  | Based on replicas     | One Pod per eligible node |
| Main purpose      | Application workloads | Node-level services       |
| Node relationship | Not required          | Important                 |
| Scaling           | Replica count         | Number of eligible nodes  |
| Common use        | Web applications      | Logging/monitoring agents |

---

## What I Learned

* DaemonSet
* Node-level Pod management
* DaemonSet and Node relationship
* DaemonSet self-healing
* DaemonSet status
* Rolling updates
* Container image updates
