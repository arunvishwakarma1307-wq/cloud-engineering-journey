# Day-15: Kubernetes Persistent Volume (PV) & Persistent Volume Claim (PVC) 💾


## Overview

Today I learned about Kubernetes Persistent Storage using Persistent Volume (PV) and Persistent Volume Claim (PVC).

In Kubernetes, containers are temporary and data can be lost when Pods are deleted. Persistent Volume helps to store data separately from containers.

Today I implemented:

- Created Persistent Volume
- Created Persistent Volume Claim
- Mounted PVC with Pod
- Stored data using Persistent Volume
- Verified data persistence after Pod deletion


## What is Persistent Volume (PV)?

Persistent Volume (PV) is a Kubernetes storage resource used to provide storage for applications.

PV defines storage capacity, access mode, and storage location.


## What is Persistent Volume Claim (PVC)?

Persistent Volume Claim (PVC) is a request for storage made by users or applications.

PVC connects Pods with available Persistent Volumes.


## PV and PVC Flow


Persistent Volume (PV)

↓

Persistent Volume Claim (PVC)

↓

Pod

↓

Container Storage



# Practical Implementation


## 1. Created Persistent Volume


Command:

kubectl apply -f pv.yaml


Created Persistent Volume with 1Gi storage.


Verified:

kubectl get pv



## 2. Created Persistent Volume Claim


Command:

kubectl apply -f pvc.yaml


Created PVC to request storage from Persistent Volume.


Verified:

kubectl get pvc



## 3. Mounted PVC into Pod


Command:

kubectl apply -f nginx-pvc-pod.yaml


Created nginx Pod and attached PVC as storage.


Verified:

kubectl describe pod nginx-pvc-pod



## 4. Stored Data in Persistent Volume


Command:

kubectl exec -it nginx-pvc-pod -- cat /usr/share/nginx/html/index.html


Verified data stored inside Persistent Volume.


Output:

Hello from Persistent Volume



## 5. Verified Data Persistence


Deleted Pod and recreated it using the same PVC.


Command:

kubectl delete pod nginx-pvc-pod


kubectl apply -f nginx-pvc-pod.yaml


Verified old data was available after Pod recreation.


## 6. Checked Final PV and PVC Status


Commands:

kubectl get pv

kubectl get pvc


Verified PV and PVC status as Bound.



## Screenshots

1. 01-create-pv.png

2. 02-create-pvc.png

3. 03-pvc-mounted-pod.png

4. 04-pv-data-verification.png

5. 05-persistence-after-pod-delete.png

6. 06-final-pv-pvc-status.png



# Key Learnings

- Learned Kubernetes Persistent Volume.
- Learned Persistent Volume Claim.
- Learned how to attach storage with Pods.
- Learned data persistence after Pod deletion.


# Day-15 Summary

Today I implemented Kubernetes Persistent Storage using PV and PVC.

I created storage, attached it with a Pod, and verified that data remains available even after Pod recreation.