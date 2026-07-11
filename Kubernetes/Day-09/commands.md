# Day-09 Commands: Kubernetes Secrets


## Start Minikube

minikube start

Used to start Kubernetes cluster.


## Check Nodes

kubectl get nodes

Used to check Kubernetes node status.


## Create Secret

kubectl create secret generic app-secret --from-literal=username=admin --from-literal=password=12345

Used to create Kubernetes Secret with username and password.


## Get Secrets

kubectl get secrets

Used to list available Secrets.


## Describe Secret

kubectl describe secret app-secret

Used to check Secret details.


## Apply Secret Pod YAML

kubectl apply -f secret-pod.yaml

Used to create Pod using Secret configuration.


## Check Pods

kubectl get pods

Used to check Pod status.


## Check Secret Inside Container

kubectl exec -it nginx-secret-pod -- env

Used to verify Secret values inside container.


## Describe Pod

kubectl describe pod nginx-secret-pod

Used to verify Secret connection with Pod.