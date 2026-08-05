# Day 30 - Kubernetes ConfigMaps

## What is a ConfigMap?

A ConfigMap is a Kubernetes object used to store application configuration separately from the application code.

Instead of hardcoding configuration values inside the application, ConfigMaps allow those values to be managed independently.

---

## Why Use ConfigMaps?

ConfigMaps help to:

- Separate configuration from application code
- Avoid rebuilding container images for configuration changes
- Manage different configurations for different environments
- Improve application portability

---

## What Can Be Stored in a ConfigMap?

A ConfigMap stores non-sensitive configuration data such as:

- Application Name
- Environment
- Database Host
- Database Port
- API URLs
- Feature Flags

Sensitive information such as passwords or API keys should be stored in Kubernetes Secrets instead.

---

## Creating a ConfigMap

ConfigMaps can be created using:

- Literal values
- Files
- YAML manifests

In this practical, literal values were used.

---

## Viewing a ConfigMap

Kubernetes provides multiple ways to inspect a ConfigMap:

- kubectl get configmaps
- kubectl describe configmap
- kubectl get configmap -o yaml

Each command provides different levels of information.

---

## Using ConfigMaps Inside Pods

A ConfigMap can be used inside a Pod as:

- Environment Variables
- Mounted Files (Volumes)

In this practical, Environment Variables were used.

---

## Environment Variables

The Pod successfully received:

APP_NAME = CloudVault

APP_ENV = Development

These values were injected from the ConfigMap during Pod creation.

---

## ConfigMap Lifecycle

ConfigMap

↓

Pod uses ConfigMap

↓

Pod deleted

↓

ConfigMap still exists

Deleting a Pod does not remove the ConfigMap.

---

## Benefits of ConfigMaps

- Centralized configuration management
- Easy updates
- Reusable across multiple Pods
- No application rebuild required
- Production-friendly configuration management

---

## What I Learned Today

- Created a Kubernetes ConfigMap.
- Viewed ConfigMap details.
- Exported ConfigMap as YAML.
- Used ConfigMap inside a Pod.
- Verified Environment Variables inside the container.
- Deleted the Pod while preserving the ConfigMap.