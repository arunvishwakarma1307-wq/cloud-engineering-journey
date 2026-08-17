# Day 42 - Kubernetes PodDisruptionBudget (PDB)

## Objective

* Understand PodDisruptionBudget (PDB).
* Configure minimum Pod availability.
* Understand voluntary disruptions.
* Understand `minAvailable`.
* Observe PDB protection status.
* Understand PDB behavior on a single-node Minikube cluster.

---

## Practical Implementation

### 1. Create PodDisruptionBudget

Created a PDB named:

```text id="r5g1ko"
hpa-pdb
```

The PDB targets the Pods of the `hpa-demo` Deployment using:

```yaml id="j7g8ts"
selector:
  matchLabels:
    app: hpa-demo
```

Configured:

```yaml id="z7m9xi"
minAvailable: 2
```

This means Kubernetes should try to maintain at least **2 available Pods** during voluntary disruptions.

---

### 2. Verify PDB Protection

Checked the PDB status and configuration using Kubernetes PDB information.

Important values verified:

* Minimum available Pods
* Current healthy Pods
* Desired healthy Pods
* Allowed disruptions

**Screenshot:**

```text id="n0p4yd"
01-pdb-protection.png
```

---

### 3. Single-Node Cluster Observation

The Minikube cluster contains only one Node.

A `kubectl drain` test was attempted, but a single-node cluster is not suitable for demonstrating meaningful PDB-protected availability because there are not multiple Nodes to maintain workload availability across.

The Node was returned to schedulable state using:

```text id="n7y8q2"
kubectl uncordon minikube
```

---

## Outcome

Successfully created and verified a Kubernetes PodDisruptionBudget with `minAvailable: 2` and understood how PDBs protect workload availability during voluntary disruptions.

---

## Key Concepts Learned

* PodDisruptionBudget
* `minAvailable`
* Voluntary disruptions
* Allowed disruptions
* PDB selectors
* Workload availability
* Single-node cluster limitations
