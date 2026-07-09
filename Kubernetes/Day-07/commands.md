# Day-07 Commands: Kubernetes Services

## Create Deployment

kubectl create deployment nginx-service --image=nginx --replicas=3


## Check Deployments

kubectl get deployments


## Check Pods

kubectl get pods


## Expose Deployment as NodePort Service

kubectl expose deployment nginx-service --type=NodePort --port=80


## Check Services

kubectl get services


## Describe Service Details

kubectl describe service nginx-service


## Access Service Using Minikube

minikube service nginx-service