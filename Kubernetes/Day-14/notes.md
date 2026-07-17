# Day-14 Notes: Kubernetes Resource Management & QoS Classes


## Resource Requests and Limits

Today I learned how to define CPU and Memory resources for Kubernetes Pods.

Requests define required resources and Limits define maximum resource usage.


## Burstable QoS

Created nginx resource deployment with different CPU and Memory requests and limits.

Example:

Requests:
- CPU: 250m
- Memory: 64Mi

Limits:
- CPU: 500m
- Memory: 128Mi


Verified:

QoS Class: Burstable



## Guaranteed QoS

Created nginx Pod where CPU and Memory requests were equal to limits.


Verified:

QoS Class: Guaranteed



## BestEffort QoS

Created nginx Pod without CPU and Memory requests and limits.


Verified:

QoS Class: BestEffort



## Day-14 Summary

Learned Kubernetes resource configuration using CPU and Memory Requests and Limits.

Verified different QoS Classes:

- Burstable
- Guaranteed
- BestEffort