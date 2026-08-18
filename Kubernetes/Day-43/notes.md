# Day 43 - Kubernetes NetworkPolicy

## What is NetworkPolicy?

NetworkPolicy is a Kubernetes resource used to control network traffic to and from Pods.

It can control:

- Ingress traffic
- Egress traffic
- Source Pods
- Destination Pods
- Ports and protocols

## Pod Selector

The practical selected the NGINX server using:

```yaml
podSelector:
  matchLabels:
    app: network-server
```

This means the policy applies to Pods having the `app=network-server` label.

## Ingress Policy

The practical used:

```yaml
policyTypes:
  - Ingress
```

This means the policy controls incoming traffic to the selected Pods.

No ingress rules were defined:

```yaml
ingress: []
```

Therefore, when NetworkPolicy enforcement is available, incoming traffic to the selected Pods is denied unless explicitly allowed by another applicable policy.

## Communication Flow

Before the policy:

```text
network-client
      |
      | HTTP request
      ↓
network-server
      |
      ↓
NGINX
      |
      ↓
Welcome to nginx!
```

## Service and DNS

A Kubernetes Service named `network-server` was created.

The client accessed the server using:

```text
http://network-server
```

The Service provided stable DNS-based access instead of directly using the Pod IP.

## NetworkPolicy Flow

```text
Client Pod
    |
    | Network request
    ↓
Service
    |
    ↓
Server Pod
    |
    ↓
NetworkPolicy
    |
    ↓
Ingress decision
```

## Important Observation

The NetworkPolicy object was created successfully and its configuration was correct.

However, after applying the policy, the client could still reach the NGINX server.

This showed that the current Minikube networking environment was not enforcing the NetworkPolicy as expected.

This is an important distinction:

```text
NetworkPolicy object exists
        ≠
NetworkPolicy is being enforced
```

NetworkPolicy enforcement depends on the cluster's networking/CNI implementation.

## NetworkPolicy vs Firewall

A NetworkPolicy is Kubernetes-native and operates at the Pod networking level.

It is different from a traditional host firewall because the policy uses Kubernetes objects such as:

- Pods
- Labels
- Namespaces
- Ports
- Selectors

## Key Learning

- NetworkPolicies control Pod network traffic.
- `podSelector` identifies the Pods affected by a policy.
- `Ingress` controls incoming traffic.
- Services provide stable access to Pods.
- A NetworkPolicy must be enforced by the cluster networking implementation to affect traffic.
- Testing the actual network behavior is important instead of assuming that a created policy is automatically working.