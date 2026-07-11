# Day-09: Kubernetes Secrets 

## Overview

Today I learned about Kubernetes Secrets and how sensitive information like username and password can be stored securely in Kubernetes.

In the previous day, I learned ConfigMap which is used for normal configuration data. In this day, I learned Secrets which are used for sensitive information.


## What is Kubernetes Secret?

Kubernetes Secret is an object used to store sensitive information like:

- Username
- Password
- Tokens
- API Keys

Secrets help to keep sensitive data separate from application code.


## ConfigMap vs Secret

ConfigMap:
- Used for normal configuration data.
- Example: Application settings.

Secret:
- Used for sensitive data.
- Example: Username and Password.


## Practical Implementation


### 1. Started Minikube

Command:

minikube start

Started the Kubernetes cluster.


### 2. Checked Kubernetes Node

Command:

kubectl get nodes

Checked Kubernetes node status.


### 3. Created Kubernetes Secret

Created Secret name:

app-secret

Command:

kubectl create secret generic app-secret --from-literal=username=admin --from-literal=password=12345

Created a Secret with username and password.


### 4. Checked Secrets

Command:

kubectl get secrets

Verified that app-secret was created successfully.


### 5. Describe Secret

Command:

kubectl describe secret app-secret

Checked Secret details.


### 6. Created Pod Using Secret

Created file:

secret-pod.yaml

Command:

kubectl apply -f secret-pod.yaml

Created nginx-secret-pod using Secret.


### 7. Checked Pod Status

Command:

kubectl get pods

Verified nginx-secret-pod status.


### 8. Checked Secret Values Inside Container

Command:

kubectl exec -it nginx-secret-pod -- env

Verified Secret values inside container.


### 9. Describe Secret Pod

Command:

kubectl describe pod nginx-secret-pod

Verified that Pod was connected with app-secret.


## Key Learnings

- Learned Kubernetes Secrets.
- Created a Secret using kubectl command.
- Used Secret inside Pod.
- Injected Secret values as environment variables.
- Verified Secret connection with Pod.


## Screenshots

 01-minikube-status.png
 02-create-secret.png
 03-get-secrets.png
 04-describe-secret.png
 05-create-secret-pod.png
 06-secret-pod-running.png
 07-secret-env-variable.png
 08-describe-secret-pod.png