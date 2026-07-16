# Day-13 Commands: Kubernetes Health Probes


## Check Kubernetes Node Status

kubectl get nodes


## Apply Liveness Probe Deployment

kubectl apply -f nginx-liveness.yaml


## Check Pods

kubectl get pods


## Describe Liveness Pod

kubectl describe pod nginx-liveness-demo-7ccddcdcf5-zjgj8


## Apply Readiness Probe Deployment

kubectl apply -f nginx-readiness.yaml


## Describe Readiness Pod

kubectl describe pod nginx-readiness-demo-68d77969b-df6zq


## Apply Startup Probe Deployment

kubectl apply -f nginx-startup.yaml


## Describe Startup Pod

kubectl describe pod nginx-startup-demo-57859cc976-6hhp8