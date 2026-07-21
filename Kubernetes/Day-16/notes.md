# Day-16 Notes: Kubernetes StorageClass & Dynamic Provisioning


## StorageClass

StorageClass is used for dynamic storage provisioning in Kubernetes.

It helps Kubernetes automatically create Persistent Volume when PVC is created.



## Dynamic Provisioning

In Dynamic Provisioning, Kubernetes automatically creates PV based on PVC request.

Flow:

StorageClass

↓

PVC

↓

Automatically Created PV

↓

Pod Storage



## Practical Implementation Notes


### StorageClass Check

- Checked available StorageClass in Kubernetes cluster.


### Dynamic PVC

- Created PVC using StorageClass.
- Verified that PV was automatically created.


### PVC Mount

- Attached dynamic PVC with nginx Pod.
- Verified PVC mount inside Pod.


### Storage Verification

- Created and verified data inside dynamic storage.


### Persistence Check

- Deleted Pod and recreated it.
- Verified that data was still available.



## Day-16 Summary

Learned Kubernetes StorageClass and Dynamic Provisioning.

Created dynamic storage using PVC and verified its usage with a Pod.