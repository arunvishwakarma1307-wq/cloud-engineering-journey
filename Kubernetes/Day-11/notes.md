# Day-11 Notes: Kubernetes Services


## Kubernetes Service

Kubernetes Service is used to provide stable networking for Pods.

Pods can restart and their IP addresses can change, but Service provides a fixed endpoint.


## Why Service is Needed?

Without Service:

Pod IP changes after restart.

With Service:

Application gets a stable network address.


## Service Components


### ClusterIP

Default Service type.

Used for internal communication inside Kubernetes cluster.


### NodePort

Exposes application outside the cluster using Node IP and Port.


### LoadBalancer

Used with cloud platforms to expose applications externally.


## Service Selector

Selector connects Service with Pods.

Example:

selector:

app=nginx-service-demo


Service sends traffic only to Pods with matching labels.


## Endpoints

Endpoints show which Pods are connected with a Service.

Example:

Service

 |

Endpoints

 |

Pods


## Load Balancing

Service distributes incoming traffic between multiple Pods.


Example:

        Service

          |

---------------------

Pod-1  Pod-2  Pod-3


## Scaling with Service

When replicas increase:

3 Pods → 5 Pods

Service automatically detects new Pods using selectors.


## Commands Learned

kubectl expose

Used to create Services.


kubectl describe service

Used to check Service details.


kubectl get endpoints

Used to check connected Pods.


kubectl scale

Used to increase or decrease replicas.


minikube service

Used to access NodePort Service.


## Day-11 Summary

Today I learned Kubernetes networking using Services.

I created ClusterIP and NodePort Services, connected Services with Pods using selectors, accessed applications externally, and tested scaling behavior.