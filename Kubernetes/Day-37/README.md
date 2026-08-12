# Day 37 - Kubernetes DaemonSet

## Objective

* Understand Kubernetes DaemonSet.
* Understand how DaemonSet manages Pods on cluster nodes.
* Verify the relationship between DaemonSet, Nodes, and Pods.
* Understand DaemonSet self-healing.
* Perform a DaemonSet rolling update.

---

## Practical Implementation

### 1. Create DaemonSet

Created a DaemonSet named:

```text id="lq5v1j"
node-agent
```

The DaemonSet uses the `nginx:1.27` image.

---

### 2. DaemonSet Pod and Node

Verified that the DaemonSet created a Pod on the available Minikube node.

```text id="q0o8s3"
minikube
   ↓
DaemonSet
   ↓
node-agent Pod
```

**Screenshot:** `01-daemonset-node-pod.png`

---

### 3. DaemonSet Status

Verified the DaemonSet status using its desired, current, ready, updated, and available Pod counts.

The DaemonSet showed:

```text id="0jv6h8"
DESIRED: 1
CURRENT: 1
READY: 1
UP-TO-DATE: 1
AVAILABLE: 1
```

**Screenshot:** `02-daemonset-status.png`

---

### 4. DaemonSet Details

Inspected the DaemonSet configuration, Pod template, container image, selector, and events.

**Screenshot:** `03-daemonset-details.png`

---

### 5. Pod Recreation

Deleted the DaemonSet-managed Pod and verified that the DaemonSet automatically created a new Pod.

This demonstrated the self-healing behavior of the DaemonSet.

**Screenshot:** `04-daemonset-pod-recreated.png`

---

### 6. DaemonSet Rolling Update

Updated the NGINX image from:

```text id="l1jv3s"
nginx:1.27
```

to:

```text id="6uj5cg"
nginx:1.28
```

The DaemonSet rollout was monitored until completion.

**Screenshot:** `05-daemonset-rolling-update.png`

---

### 7. Final Verification

Verified that the DaemonSet was ready and the recreated Pod was running with the updated `nginx:1.28` image.

**Screenshot:** `06-daemonset-final-status.png`

---

## Outcome

Successfully created and verified a Kubernetes DaemonSet.

The DaemonSet Pod was scheduled on the available Minikube node, automatically recreated after deletion, and successfully updated from `nginx:1.27` to `nginx:1.28`.

---

## Key Concepts Learned

* Kubernetes DaemonSet
* DaemonSet and Node relationship
* DaemonSet Pod scheduling
* DaemonSet self-healing
* Desired and current Pod count
* DaemonSet rolling update
* Container image update
* DaemonSet status verification
