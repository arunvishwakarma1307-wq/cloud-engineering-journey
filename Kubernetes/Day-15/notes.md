# Day-15 Notes: Kubernetes Persistent Volume (PV) & Persistent Volume Claim (PVC)


## Persistent Volume (PV)

Persistent Volume (PV) Kubernetes ka storage resource hai jo Pods ko storage provide karta hai.

PV me storage capacity aur access mode define hota hai.


## Persistent Volume Claim (PVC)

Persistent Volume Claim (PVC) storage ke liye request hoti hai.

PVC available Persistent Volume se connect hota hai aur Pod ko storage provide karta hai.



## PV and PVC Flow


Persistent Volume (PV)

↓

Persistent Volume Claim (PVC)

↓

Pod

↓

Container Storage



## Practical Implementation Notes


### Persistent Volume

- Created PV with 1Gi storage.
- Verified PV status using kubectl get pv.


### Persistent Volume Claim

- Created PVC to request storage.
- Verified PVC was connected with PV.


### PVC Mount

- Attached PVC with nginx Pod.
- Mounted storage inside container.


### Data Verification

- Created data file inside mounted storage.
- Verified data from Pod.


### Data Persistence

- Deleted Pod and recreated it.
- Verified that old data was still available using same PVC.


## Day-15 Summary

Learned Kubernetes Persistent Storage using PV and PVC.

Created storage, attached it with a Pod, and verified data persistence after Pod recreation.