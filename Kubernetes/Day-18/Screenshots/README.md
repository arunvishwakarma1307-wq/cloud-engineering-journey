# Day 18 - Introduction to Helm

## Objective

Learn the basics of Helm and deploy an NGINX application on a Kubernetes cluster using Helm.

---

## What I Learned

- What is Helm?
- Why Helm is called the Package Manager for Kubernetes.
- Installed Helm on Windows.
- Added the Bitnami Helm repository.
- Updated Helm repositories.
- Searched available NGINX charts.
- Deployed an NGINX application using Helm.
- Verified the Helm release.
- Verified Kubernetes Pods, Services, and Deployments.

---

## Prerequisites

Before installing the Helm chart, make sure Minikube is running.

Start Minikube:

```bash
minikube start
```

Verify that the cluster is running:

```bash
kubectl get nodes
```

After Minikube is running, install the NGINX Helm chart:

```bash
helm install my-nginx bitnami/nginx
```

---

## Project Files

- README.md – Practical overview
- Notes.md – Concepts and theory
- Commands.md – Commands used in this practical

---

## Screenshots

| Screenshot | Description |
|------------|-------------|
| 01-helm-version.png | Helm Version |
| 02-add-bitnami-repository.png | Added Bitnami Repository |
| 03-update-repository.png | Updated Helm Repository |
| 04-search-nginx-chart.png | Searched NGINX Chart |
| 05-install-nginx-using-helm.png | Installed NGINX using Helm |
| 06-helm-list.png | Verified Helm Release |
| 07-verify-pods.png | Verified Kubernetes Pods |
| 08-verify-services.png | Verified Kubernetes Services |
| 09-verify-deployments.png | Verified Kubernetes Deployments |

---

## Outcome

Successfully installed Helm and deployed an NGINX application on a Kubernetes cluster using Helm. Learned how Helm simplifies Kubernetes application deployment and management.