# Day 32 - Kubernetes Volumes, PV and PVC

## Kubernetes Volumes

Kubernetes Volumes provide storage that can be mounted inside containers.

Volumes are useful when an application needs to store or access data outside the container's normal filesystem.

---

## emptyDir

`emptyDir` is temporary Pod-level storage.

The volume is created when the Pod starts and is removed when the Pod is deleted.

### Behavior

```text
Pod starts
    ↓
emptyDir created
    ↓
Data stored
    ↓
Pod deleted
    ↓
Data lost
```

It is useful for temporary files, cache, and sharing data between containers in the same Pod.

---

## StorageClass

A StorageClass defines how storage is dynamically provisioned.

The Minikube cluster used in this practical has:

```text
Name: standard
Provisioner: k8s.io/minikube-hostpath
```

---

## Persistent Volume (PV)

A Persistent Volume is a storage resource provided to the Kubernetes cluster.

PV storage can exist independently of a particular Pod.

---

## Persistent Volume Claim (PVC)

A PVC is a request for storage made by an application or user.

Example:

```text
PVC
 ↓
StorageClass
 ↓
PV
```

In this practical, a PVC requested `1Gi` of storage.

---

## Dynamic Provisioning

The PVC automatically triggered creation of a Persistent Volume through the default StorageClass.

This is called dynamic provisioning.

---

## PVC with Pod

A Pod can mount a PVC as a volume.

Example:

```text
Pod
 ↓
PVC
 ↓
PV
 ↓
Storage
```

The application can then read and write data through the mounted directory.

---

## Data Persistence

Unlike `emptyDir`, data stored through a PVC can remain available after the Pod is deleted and recreated.

```text
Pod 1
 ↓
Write data
 ↓
Pod deleted
 ↓
Pod 2
 ↓
Same PVC
 ↓
Data available
```

---

## emptyDir vs PVC

| Feature | emptyDir | PVC |
|---|---|---|
| Storage | Temporary | Persistent |
| Pod deletion | Data lost | Data preserved |
| Main use | Temporary data | Application data |
| Dynamic provisioning | No | Yes |

---

## What I Learned Today

- Kubernetes Volumes
- `emptyDir`
- StorageClass
- Persistent Volume (PV)
- Persistent Volume Claim (PVC)
- Dynamic provisioning
- Mounting PVC into a Pod
- Persistent data storage