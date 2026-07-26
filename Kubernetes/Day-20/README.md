# Day 20 - Helm Custom Values (values.yaml)

## Objective

Learn how to customize a Helm Chart using the `values.yaml` file and deploy an application with custom configuration.

---

## Description

- Viewed the default values of the Bitnami NGINX Helm Chart.
- Exported the default configuration into a local `values.yaml` file.
- Modified the default values:
  - Changed `replicaCount` from **1** to **2**.
  - Changed `service.type` from **LoadBalancer** to **NodePort**.
- Installed the NGINX Helm Chart using the customized `values.yaml`.
- Verified that the custom values were successfully applied.

---

## Screenshots

### 01-helm-search-repo.png

### 02-helm-show-values.png

### 03-values-file-created.png

### 04-replicaCount-edited.png

### 05-service-type-nodeport.png

### 06-install-custom-values.png

### 07-helm-get-values.png

---

## Outcome

Successfully customized a Helm Chart using the `values.yaml` file by modifying the default configuration. Deployed the NGINX application with custom values and verified that the customized settings were successfully applied using Helm.