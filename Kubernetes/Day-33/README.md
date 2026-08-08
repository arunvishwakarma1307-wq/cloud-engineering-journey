# Day 33 - Kubernetes PV, PVC and StorageClass Deep Dive

## Objective

Understand the relationship between Persistent Volumes (PV), Persistent Volume Claims (PVC), StorageClasses, and Pods in Kubernetes.

---

## Practical Implementation

### Screenshot 1 - PV Details

Inspected an existing Persistent Volume using `kubectl describe pv`.

Verified its capacity, access mode, reclaim policy, status, claim, and StorageClass.

---

### Screenshot 2 - PVC Details

Inspected the `data-dependency-demo-mysql-0` PersistentVolumeClaim and verified its storage configuration and binding information.
---

### Screenshot 3 - PV-PVC Binding

Used `kubectl get pv,pvc` to verify that the Persistent Volume and Persistent Volume Claim were successfully bound.
---
### Screenshot 4 - StorageClass Details

Inspected the default `standard` StorageClass and verified its provisioner, reclaim policy, volume binding mode, and volume expansion configuration.
---
### Screenshot 5 - MySQL PVC Mount

Inspected the MySQL Pod and verified how its persistent storage is mounted inside the Pod.
---
### Screenshot 6 - PVC Wide Status

Used `kubectl get pvc -o wide` to view the PVC status, associated PV, capacity, access mode, StorageClass, and volume mode.

Both existing PVCs were in the `Bound` state.
---
### Screenshot 7 - PV-PVC Mapping

Used `kubectl get pv,pvc -o wide` to view the relationship between Persistent Volumes and Persistent Volume Claims.
---
### Screenshot 8 - PV Reclaim Policy

Checked the reclaim policy of the existing Persistent Volumes.

The dynamically provisioned volumes use the `Delete` reclaim policy.
---
### Screenshot 9 - PVC Volume Mode

Verified that the existing PVCs use the `Filesystem` volume mode.
---
### Screenshot 10 - Final Storage Overview

Used a final storage overview command to inspect PVs, PVCs, and StorageClasses together.

The existing storage resources remained successfully configured and bound.

---

## Key Concepts Learned

### Persistent Volume (PV)

A Persistent Volume is a storage resource available to the Kubernetes cluster.

It provides storage independently from a specific Pod.

### Persistent Volume Claim (PVC)

A PVC is a request for storage made by an application or user.

The PVC is bound to a suitable Persistent Volume.

### StorageClass

A StorageClass defines how Kubernetes dynamically provisions storage.

The Minikube cluster uses:

```text
standard
```

with:

```text
k8s.io/minikube-hostpath
```

as the provisioner.

### PV and PVC Relationship

```text
Pod
 ↓
PVC
 ↓
PV
 ↓
Storage
```

The Pod uses the PVC, while the PVC is bound to the actual Persistent Volume.

### Reclaim Policy

The existing dynamically provisioned PVs use:

```text
Delete
```

This means the dynamically provisioned storage resource can be deleted when its PVC is deleted, depending on the storage provisioner.

### Volume Mode

The PVCs use:

```text
Filesystem
```

This means the storage is mounted as a filesystem inside the Pod.

---

## Important Safety Note

The PVs and PVCs inspected during this practical were existing MySQL storage resources.

No PV or PVC was deleted or modified during the practical to avoid affecting existing application data.

---

## Screenshots

- 01-pv-details.png
- 02-pvc-details.png
- 03-pv-pvc-binding.png
- 04-storageclass-details.png
- 05-mysql-pvc-mount.png
- 06-pvc-wide-status.png
- 07-pv-pvc-mapping.png
- 08-pv-reclaim-policy.png
- 09-pvc-volume-mode.png
- 10-final-storage-overview.png

**Total Screenshots: 10**

---

## Outcome

Successfully inspected and understood the relationship between PVs, PVCs, StorageClasses, and Pods, including storage binding, reclaim policy, volume mode, and persistent storage mounting in Kubernetes.