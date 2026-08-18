# Day 43 - Kubernetes NetworkPolicy

## Objective

- Understand Kubernetes NetworkPolicy.
- Understand Pod ingress traffic control.
- Test Pod-to-Pod communication.
- Create a NetworkPolicy that denies ingress traffic.
- Observe NetworkPolicy enforcement behavior in the Minikube environment.

## Practical Implementation

### 1. Create Network Test Pods

Created two Pods:

- `network-client`
- `network-server`

The `network-client` Pod was used to send network requests, while `network-server` ran an NGINX web server.

### 2. Create Service for Network Server

A ClusterIP Service named `network-server` was created to provide stable DNS-based access to the NGINX Pod.

The Service successfully resolved to the server Pod endpoint.

### 3. Verify Initial Connectivity

Before applying the NetworkPolicy, the client successfully accessed the NGINX server.

Command:

```powershell
kubectl exec network-client -c client -- wget -qO- --timeout=3 http://network-server
```

The response displayed the NGINX welcome page.

Screenshot:

`01-initial-connectivity.png`

### 4. Create NetworkPolicy

Created a NetworkPolicy named:

`deny-network-server-ingress`

The policy targets:

```yaml
podSelector:
  matchLabels:
    app: network-server
```

and enables:

```yaml
policyTypes:
  - Ingress
```

No ingress rules were defined, creating a deny-ingress policy for the selected Pod when NetworkPolicy enforcement is active.

### 5. Verify NetworkPolicy Configuration

Verified the policy using:

```powershell
kubectl describe networkpolicy deny-network-server-ingress
```

The configuration showed:

- Pod selector: `app=network-server`
- Policy type: `Ingress`
- No ingress rules

Screenshot:

`02-networkpolicy-configuration.png`

### 6. NetworkPolicy Enforcement Observation

After applying the NetworkPolicy, the client was still able to access the NGINX server.

This indicates that the current Minikube networking environment was not enforcing the NetworkPolicy as expected.

The result was documented as an environment limitation rather than claiming that traffic was successfully blocked.

## Outcome

Successfully created and inspected a Kubernetes NetworkPolicy and tested Pod-to-Pod connectivity before and after applying the policy.

The practical also demonstrated that defining a NetworkPolicy object and enforcing that policy are separate aspects of Kubernetes networking.

## Key Concepts Learned

- NetworkPolicy
- Ingress traffic
- Pod selectors
- ClusterIP Service
- Pod-to-Pod communication
- Default deny ingress behavior
- NetworkPolicy enforcement
- CNI/networking limitations

## Screenshots

1. `01-initial-connectivity.png`
2. `02-networkpolicy-configuration.png`
