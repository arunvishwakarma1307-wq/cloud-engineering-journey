# Day-09 Notes: Kubernetes Secrets


## Kubernetes Secret

Kubernetes Secret is used to store sensitive information securely.


## Examples of Secret Data

- Username
- Password


## Why Use Secret?

Sensitive information should not be directly written inside application code.

Kubernetes Secret stores this information separately.


## Secret Created

Secret Name:

app-secret


Stored Data:

username=admin

password=12345


## Secret Usage

Secret was connected with:

nginx-secret-pod


Secret values were injected as environment variables.


## Commands Learned

kubectl create secret

Used to create Kubernetes Secret.


kubectl get secrets

Used to list Secrets.


kubectl describe secret

Used to check Secret details.


kubectl exec

Used to check environment variables inside container.


kubectl describe pod

Used to check Pod configuration.


## Day-09 Summary

Today I learned how Kubernetes Secrets work.

I created a Secret, connected it with an Nginx Pod, and verified Secret values inside the container.