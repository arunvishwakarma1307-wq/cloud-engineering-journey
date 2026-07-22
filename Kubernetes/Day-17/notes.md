# Day-17 Notes: Kubernetes Ingress

## Ingress

Ingress is a Kubernetes resource used to manage external HTTP/HTTPS traffic and route requests to services inside the cluster.

## Ingress Controller

Ingress Controller handles incoming requests and forwards them to the correct Kubernetes Service.

We used Nginx Ingress Controller in Minikube.

## Ingress Flow

Client

↓

Ingress Controller

↓

Ingress Rule

↓

Service

↓

Pod


## Host Based Routing

Ingress can route traffic based on hostname.

Example:

nginx.local


## Key Learnings

- Learned Kubernetes Ingress concept.
- Learned Nginx Ingress Controller.
- Learned creating Ingress rules.
- Learned routing traffic from Ingress to Service.