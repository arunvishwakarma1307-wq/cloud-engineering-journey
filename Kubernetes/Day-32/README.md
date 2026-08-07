# Day 32 - Kubernetes Volumes, PV and PVC

## Objective

Learn how Kubernetes handles storage using Volumes, Persistent Volumes (PV), Persistent Volume Claims (PVC), and StorageClasses.

The practical demonstrates the difference between temporary `emptyDir` storage and persistent storage using PVC.

---

## Practical Implementation

### Screenshot 1 - EmptyDir Pod Running

Created a Kubernetes Pod using an `emptyDir` volume and verified that the Pod was running successfully.

### Screenshot 2 - Volume Data Created

Created a file inside the mounted `/data` directory and verified that the data was successfully stored in the `emptyDir` volume.

### Screenshot 3 - Volume Mount Details

Used `kubectl describe pod` to verify the volume configuration and the `/data` volume mount inside the Pod.

### Screenshot 4 - EmptyDir Data Lost

Deleted the Pod and recreated it.

After recreation, the previously created file was no longer available.

This demonstrated that `emptyDir` storage exists only for the lifetime of the Pod.

### Screenshot 5 - StorageClass

Checked the available Kubernetes StorageClass.

The Minikube cluster provided the `standard` StorageClass using the `k8s.io/minikube-hostpath` provisioner.

### Screenshot 6 - PVC Bound

Created a PersistentVolumeClaim requesting `1Gi` of storage.

Verified that the PVC successfully reached the `Bound` state.

### Screenshot 7 - Persistent Volume

Verified that Kubernetes dynamically created a Persistent Volume for the PVC.

This demonstrated dynamic volume provisioning through the StorageClass.

### Screenshot 8 - PVC Pod Running

Created a Pod that mounts the PersistentVolumeClaim at `/data` and verified that the Pod was running.

### Screenshot 9 - Persistent Data Created

Created a file named `persistent.txt` inside the PVC-mounted `/data` directory and verified the stored data.

### Screenshot 10 - PVC Data Persistence

Deleted the Pod and recreated it using the same PVC.

The previously created `persistent.txt` file was still available.

This demonstrated that PVC-backed storage can preserve data independently of the Pod.

### Screenshot 11 - Final PVC Status

Verified the final status of the PVC and confirmed that the claim remained successfully bound to its Persistent Volume.

---

## Screenshots

- 01-emptydir-pod-running.png
- 02-volume-data-created.png
- 03-volume-mount-details.png
- 04-emptydir-data-lost.png
- 05-storageclass.png
- 06-pvc-bound.png
- 07-persistent-volume.png
- 08-pvc-pod-running.png
- 09-persistent-data-created.png
- 10-pvc-data-persistence.png
- 11-pvc-final-status.png

---

## Key Concepts Learned

### emptyDir

`emptyDir` provides temporary storage for containers inside a Pod.

The data exists as long as the Pod exists.

```text
Pod
 ↓
emptyDir
 ↓
Data
```

When the Pod is deleted:

```text
Pod deleted
 ↓
emptyDir deleted
 ↓
Data lost
```

---

### Persistent Volume (PV)

A Persistent Volume is a storage resource available to the Kubernetes cluster.

It provides storage independently from an individual Pod.

---

### Persistent Volume Claim (PVC)

A PVC is a request for storage made by a user or application.

The PVC can request:

- Storage capacity
- Access mode
- StorageClass

Example:

```text
PVC
 ↓
StorageClass
 ↓
PV
```

---

### StorageClass

A StorageClass allows Kubernetes to dynamically provision storage.

In this practical, Minikube's default StorageClass was:

```text
standard
```

with:

```text
k8s.io/minikube-hostpath
```

as the provisioner.

---

## emptyDir vs PVC

| Feature | emptyDir | PVC |
|---|---|---|
| Storage Type | Temporary | Persistent |
| Pod Deletion | Data lost | Data preserved |
| Use Case | Temporary files/cache | Application data |
| Persistent Storage | No | Yes |
| Production Storage | Limited use | Commonly used |

---

## Data Persistence Demonstration

The practical demonstrated the difference clearly:

### emptyDir

```text
Pod 1
 ↓
Create data
 ↓
Pod deleted
 ↓
Data lost
```

### PVC

```text
Pod 1
 ↓
Create data
 ↓
Pod deleted
 ↓
Pod 2
 ↓
Same PVC
 ↓
Data still available
```

---

## Outcome

Successfully learned Kubernetes storage using `emptyDir`, StorageClass, PV, and PVC. Demonstrated the difference between temporary and persistent storage and verified that PVC-backed data survives Pod deletion.