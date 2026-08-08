# Day 33 - Kubernetes PV, PVC and StorageClass

## Persistent Volume (PV)

A Persistent Volume is a storage resource provided by the Kubernetes cluster.

PV provides persistent storage that can be used by applications running in Kubernetes.

---

## Persistent Volume Claim (PVC)

A Persistent Volume Claim is a request for storage made by a user or application.

A PVC can be bound to a suitable Persistent Volume.

```text
Pod
 ↓
PVC
 ↓
PV
 ↓
Storage
```

---

## PV and PVC Binding

When a PVC is successfully connected to a PV, its status becomes:

```text
Bound
```

In this practical, the existing PVCs were successfully bound to their respective PVs.

---

## StorageClass

A StorageClass defines how Kubernetes dynamically provisions storage.

The Minikube cluster uses the default StorageClass:

```text
standard
```

Provisioner:

```text
k8s.io/minikube-hostpath
```

---

## Dynamic Provisioning

Kubernetes can automatically create a Persistent Volume when an application creates a PVC.

```text
PVC
 ↓
StorageClass
 ↓
Dynamic Provisioning
 ↓
PV
```

This avoids manually creating every PV.

---

## Reclaim Policy

The existing PVs use:

```text
Delete
```

The `Delete` policy allows the dynamically provisioned PV resource to be deleted when its PVC is deleted, depending on the storage provisioner.

---

## Volume Mode

The PVCs inspected in this practical use:

```text
Filesystem
```

Filesystem mode makes the storage available to the Pod as a mounted filesystem.

---

## MySQL Persistent Storage

The existing MySQL Pods were inspected to understand how their PVC-backed storage is mounted.

```text
MySQL Pod
 ↓
PVC
 ↓
PV
 ↓
Persistent Storage
```

---

## Important Safety Note

The PVs and PVCs inspected during this practical were existing MySQL storage resources.

No PV or PVC was deleted or modified during the practical.

---

## What I Learned

- Persistent Volumes (PV)
- Persistent Volume Claims (PVC)
- PV-PVC binding
- StorageClass
- Dynamic provisioning
- Reclaim Policy
- Volume Mode
- Persistent storage mounting
- Checking storage resources using kubectl