# Day 31 - Kubernetes Secrets

## What is a Secret?

A Secret is a Kubernetes object used to store sensitive information securely.

Secrets help separate confidential data from application code and configuration.

---

## Why Use Secrets?

Secrets are used to store sensitive information such as:

- Database Passwords
- API Keys
- Access Tokens
- JWT Secrets
- SSH Keys
- Certificates

Instead of hardcoding these values inside the application, Kubernetes manages them separately.

---

## ConfigMap vs Secret

ConfigMap

- Stores normal configuration
- Plain text values
- Used for application settings

Secret

- Stores sensitive information
- Values are Base64 encoded
- Used for passwords, tokens, and API keys

---

## Creating a Secret

Secrets can be created using:

- Literal values
- Files
- YAML manifests

In this practical, literal values were used.

---

## Viewing Secrets

Useful commands include:

- kubectl get secrets
- kubectl describe secret
- kubectl get secret -o yaml

Each command provides different information.

---

## Secret Storage

Kubernetes stores Secret values in Base64 encoded format.

Base64 encoding is not encryption.

Production clusters should enable encryption at rest for stronger security.

---

## Using Secrets Inside Pods

Secrets can be consumed inside Pods as:

- Environment Variables
- Mounted Volumes

This practical used Environment Variables.

---

## Verifying Secret Values

The Secret values were successfully injected into the Pod.

Verified values:

DB_PASSWORD = MyPassword123

API_KEY = ABC123XYZ

---

## Secret Lifecycle

Secret

↓

Pod uses Secret

↓

Pod deleted

↓

Secret still exists

Deleting a Pod does not remove the Secret.

---

## Best Practices

- Store only sensitive data in Secrets.
- Use ConfigMaps for non-sensitive configuration.
- Never hardcode passwords inside application code.
- Enable encryption at rest in production clusters.
- Use RBAC to restrict Secret access.

---

## What I Learned Today

- Created a Kubernetes Secret.
- Viewed Secret details.
- Exported Secret as YAML.
- Understood Base64 encoding.
- Decoded Secret values.
- Used Secret inside a Pod.
- Verified Environment Variables.
- Deleted the Pod while preserving the Secret.