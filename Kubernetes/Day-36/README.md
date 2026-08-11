# Day-36: Kubernetes Ingress

## Objective

* Understand Kubernetes Ingress and Ingress Controller.
* Configure NGINX Ingress Controller in Minikube.
* Create a host-based Ingress rule.
* Route external HTTP traffic to a Kubernetes Service and Pods.

## Practical Implementation

### 1. Enable NGINX Ingress Controller

Enabled the NGINX Ingress Controller using the Minikube Ingress addon and verified that the controller was running.

### 2. Deploy Backend Application

Created an `ingress-demo` Deployment with 2 NGINX replicas and exposed it using the `ingress-demo-service` Service.

### 3. Create Ingress Resource

Created an Ingress named `ingress-demo` with:

* Host: `ingress-demo.local`
* Path: `/`
* Ingress Class: `nginx`
* Backend: `ingress-demo-service:80`

Verified the Ingress configuration and backend endpoints.

### 4. Test Ingress Routing

Sent an HTTP request using the `ingress-demo.local` Host header.

The request was successfully routed through:

**Ingress → Service → NGINX Pods**

## Screenshots

### Screenshot 1 — Ingress Configuration

`01-ingress-configured.png`

Shows the configured Ingress, host, backend Service, and routing information.

### Screenshot 2 — Ingress Routing

`02-ingress-routing.png`

Shows the successful request through the Ingress with the `Welcome to nginx!` response.

## Outcome

Successfully configured the NGINX Ingress Controller and implemented host-based routing from an external HTTP request to the Kubernetes Service and NGINX Pods.

