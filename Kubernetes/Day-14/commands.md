# Day-14 Commands: Kubernetes Resource Management & QoS Classes


## Check Nodes

kubectl get nodes


## Create Resource Deployment

kubectl apply -f nginx-resource.yaml


## Check Pods

kubectl get pods


## Verify Burstable QoS

kubectl describe pod nginx-resource-demo-8c69b8999-8wv44


## Create Guaranteed Pod

kubectl apply -f nginx-guaranteed.yaml


## Verify Guaranteed QoS

kubectl describe pod nginx-guaranteed-pod


## Create BestEffort Pod

kubectl apply -f nginx-besteffort.yaml


## Verify BestEffort QoS

kubectl describe pod nginx-besteffort-pod