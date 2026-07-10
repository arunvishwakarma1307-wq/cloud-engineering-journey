# Day-08 Notes: Kubernetes ConfigMap


## What is ConfigMap?

ConfigMap is a Kubernetes object used to store configuration data separately from application code.

It helps to keep configuration values outside container images.


## Why Use ConfigMap?

Without ConfigMap:

- Configuration is hardcoded inside the application.
- Changing configuration requires rebuilding the image.


With ConfigMap:

- Configuration can be changed independently.
- Same image can be used with different configurations.


## Creating ConfigMap

Created ConfigMap using:

kubectl create configmap app-config --from-literal=APP_COLOR=blue


## Using ConfigMap in Pod

ConfigMap values can be injected into Pods as environment variables.

Example:

APP_COLOR=blue


## Flow

ConfigMap
     |
     ↓
Pod Environment Variable
     |
     ↓
Container Application


## Commands Learned

kubectl create configmap

Used to create a ConfigMap.


kubectl get configmaps

Used to list ConfigMaps.


kubectl describe configmap

Used to view ConfigMap details.


kubectl exec

Used to execute commands inside a running container.


## What I Learned

- ConfigMap stores application configuration.
- Configuration can be separated from container images.
- Pods can consume ConfigMap values.
- Environment variables can be injected using ConfigMap.