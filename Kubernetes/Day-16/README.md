# Day-16: Kubernetes StorageClass & Dynamic Provisioning 💾


## Overview

Today I learned Kubernetes StorageClass and Dynamic Provisioning.

In Day-16, I implemented automatic Persistent Volume creation using StorageClass.

Today I implemented:

- Checked available StorageClass
- Created Dynamic PVC
- Verified automatic PV creation
- Mounted PVC with Pod
- Verified storage data
- Checked persistence after Pod recreation


## What is StorageClass?

StorageClass is a Kubernetes object used for dynamic storage provisioning.

It allows Kubernetes to automatically create Persistent Volumes when a PVC is created.



## Dynamic Provisioning

Dynamic Provisioning automatically creates Persistent Volume based on Persistent Volume Claim requirements.

Flow:

StorageClass

↓

PVC

↓

Automatically Created PV

↓

Pod Storage



# Practical Implementation


## 1. Checked StorageClass


Command:

kubectl get storageclass


Checked available StorageClass in Kubernetes cluster.



## 2. Created Dynamic PVC


Command:

kubectl apply -f dynamic-pvc.yaml


Created PVC without manually creating Persistent Volume.



## 3. Verified Automatic PV Creation


Commands:

kubectl get pvc

kubectl get pv


Verified that Kubernetes automatically created and bound PV with PVC.



## 4. Mounted Dynamic PVC into Pod


Command:

kubectl apply -f nginx-dynamic-pvc-pod.yaml


Created nginx Pod and attached dynamic PVC as storage.


Verified:

kubectl describe pod nginx-dynamic-pvc-pod



## 5. Verified Dynamic Storage Data


Command:

kubectl exec -it nginx-dynamic-pvc-pod -- cat /usr/share/nginx/html/index.html


Verified data stored inside dynamically created storage.


Output:

Hello from Dynamic Provisioning



## 6. Tested Storage Persistence


Deleted Pod and recreated it using the same PVC.


Commands:

kubectl delete pod nginx-dynamic-pvc-pod


kubectl apply -f nginx-dynamic-pvc-pod.yaml


Verified old data was still available after Pod recreation.



## Screenshots

1. 01-storageclass-list.png

2. 02-dynamic-pvc-created.png

3. 03-dynamic-pvc-pod-mount.png

4. 04-dynamic-storage-verification.png

5. 05-dynamic-persistence-check.png



# Key Learnings

- Learned Kubernetes StorageClass.
- Learned Dynamic Provisioning.
- Learned automatic PV creation using PVC.
- Learned mounting dynamic storage with Pod.
- Learned storage persistence after Pod recreation.


# Day-16 Summary

Today I implemented Kubernetes Dynamic Provisioning using StorageClass and PVC.

I verified automatic PV creation and used dynamic storage with a Kubernetes Pod.