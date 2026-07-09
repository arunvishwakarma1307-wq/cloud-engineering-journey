# Day-07: Kubernetes Services (NodePort)

## Objective

Learn how Kubernetes Services provide a stable network endpoint and expose applications outside the cluster using NodePort.

---

## Topics Covered

- What is Kubernetes Service?
- Why Service is required?
- NodePort Service
- Exposing a Deployment
- Accessing application using Minikube Service

---

## Practical Performed

### 1. Created Nginx Deployment

Created a deployment with 3 replicas.

Command:

kubectl create deployment nginx-service --image=nginx --replicas=3


### 2. Checked Deployment

Command:

kubectl get deployments


### 3. Checked Running Pods

Command:

kubectl get pods


### 4. Created NodePort Service

Exposed the deployment using NodePort.

Command:

kubectl expose deployment nginx-service --type=NodePort --port=80


### 5. Verified Service

Command:

kubectl get services


### 6. Viewed Service Details

Command:

kubectl describe service nginx-service


### 7. Accessed Application

Command:

minikube service nginx-service


Successfully opened Nginx application in browser.

---

## What I Learned

- A Service provides a stable network endpoint for Pods.
- Pod IP addresses can change, but Service remains stable.
- NodePort allows external access to applications.
- Service connects users to Pods through a Deployment.

---

## Result

Successfully created a NodePort Service and accessed the Nginx application using Minikube.

---

## Screenshots

1. Create Deployment
2. Get Deployment
3. Get Pods
4. Expose Service
5. Get Services
6. Describe Service
7. Minikube Service