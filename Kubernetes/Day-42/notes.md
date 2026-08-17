# Day 42 - Kubernetes PodDisruptionBudget

## What is a PodDisruptionBudget?

A PodDisruptionBudget (PDB) defines how many Pods of a workload should remain available during voluntary disruptions.

Examples:

- Node maintenance
- Cluster administration
- Node draining
- Planned infrastructure operations

## minAvailable

The practical used:

```yaml
minAvailable: 2
```

This specifies that at least 2 matching Pods should remain available during a voluntary disruption when possible.

## PDB Selector

The PDB selected Pods using:

```yaml
selector:
  matchLabels:
    app: hpa-demo
```

Therefore, the PDB applies to Pods having the `app=hpa-demo` label.

## Allowed Disruptions

`ALLOWED DISRUPTIONS` represents how many voluntary disruptions can currently occur while respecting the PDB availability requirement.

It depends on the number of healthy matching Pods and the PDB configuration.

## Voluntary vs Involuntary Disruption

### Voluntary Disruption

An intentional action such as:

```text
Node maintenance
      ↓
Node drain
      ↓
Pods may be evicted
```

PDBs are designed to protect availability during these planned disruptions.

### Involuntary Disruption

Unexpected events such as:

- Node crash
- Hardware failure
- Unexpected termination

A PDB does not prevent these failures.

## Single-Node Minikube Limitation

The practical cluster had only one Node:

```text
minikube
```

Because there was only one Node, a full drain-based PDB demonstration was limited.

PDB behavior becomes more meaningful when a workload has multiple Pods and the cluster has enough capacity to maintain the required availability.

## PDB Flow

```text
Workload
   ↓
Matching Pods
   ↓
PodDisruptionBudget
   ↓
Availability requirement
   ↓
Voluntary disruption
   ↓
Kubernetes tries to preserve required availability
```

## Important Observations

- PDBs protect availability during voluntary disruptions.
- `minAvailable` specifies the minimum desired number of available Pods.
- PDBs use selectors to identify the Pods they protect.
- PDBs do not guarantee protection from unexpected failures.
- PDB behavior depends on the number of healthy matching Pods.
- A single-node cluster limits meaningful drain/PDB demonstrations.