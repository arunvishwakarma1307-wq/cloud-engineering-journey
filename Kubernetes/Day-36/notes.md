# Day 36 - Kubernetes Ingress

## Ingress

Ingress is a Kubernetes API object used to manage external HTTP/HTTPS access to applications running inside the cluster.

It defines routing rules that forward incoming requests to the appropriate Kubernetes Service.

---

## Ingress Controller

An Ingress resource requires an Ingress Controller to process the routing rules.

In this practical, the **NGINX Ingress Controller** was enabled using Minikube.

---

## Host-Based Routing

Ingress can route requests based on the hostname.

Example:

```text
ingress-demo.local
        ↓
ingress-demo
        ↓
ingress-demo-service
        ↓
NGINX Pods
```

---

## Ingress Resource

The Ingress resource was configured with:

```text
Host: ingress-demo.local
Path: /
Ingress Class: nginx
Backend: ingress-demo-service:80
```

---

## Backend Service

The Ingress routes traffic to:

```text
ingress-demo-service
```

The Service then forwards the request to the NGINX Pods.

---

## Ingress Traffic Flow

```text
Client
   ↓
Ingress Controller
       ↓
Ingress Rule
       ↓
Service
       ↓
NGINX Pods
```

---

## Host Header

The host-based routing was tested using:

```text
Host: ingress-demo.local
```

The request was successfully routed through the Ingress to the backend Service.

---

## Routing Verification

The routing was verified using:

```text
curl.exe -H "Host: ingress-demo.local" http://127.0.0.1:55681/
```

The response was:

```text
Welcome to nginx!
```

This confirmed that the Ingress routing was working correctly.

---

## Ingress Backend

The Ingress backend was connected to:

```text
ingress-demo-service:80
```

The Service had two NGINX Pods as backend endpoints.

---

## What I Learned

* Kubernetes Ingress
* Ingress Controller
* NGINX Ingress Controller
* Host-based routing
* Ingress rules
* Backend Service
* Host header
* HTTP routing
* Ingress → Service → Pod traffic flow
