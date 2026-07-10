# Day-08 Commands: Kubernetes ConfigMap

## Start Minikube

minikube start


## Check Nodes

kubectl get nodes


## Create ConfigMap

kubectl create configmap app-config --from-literal=APP_COLOR=blue


## Get ConfigMaps

kubectl get configmaps


## Describe ConfigMap

kubectl describe configmap app-config


## Apply Pod YAML

kubectl apply -f configmap-pod.yaml


## Check Pods

kubectl get pods


## Check Environment Variables Inside Pod

kubectl exec -it nginx-configmap-pod -- env


## Describe Pod

kubectl describe pod nginx-configmap-pod