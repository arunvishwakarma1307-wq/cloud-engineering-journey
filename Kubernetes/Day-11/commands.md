# Day-11 Kubernetes Services Commands


## Check Nodes

kubectl get nodes


## Create Deployment

kubectl create deployment nginx-service-demo --image=nginx --replicas=3


## Check Deployment

kubectl get deployments


## Check Pods

kubectl get pods


## Create ClusterIP Service

kubectl expose deployment nginx-service-demo --port=80


## Get Services

kubectl get services


## Describe Service

kubectl describe service nginx-service-demo


## Check Service Endpoints

kubectl get endpoints nginx-service-demo


## Create NodePort Service

kubectl expose deployment nginx-service-demo --type=NodePort --port=80 --name=nginx-nodeport-service


## Check NodePort Service

kubectl get services


## Get Service URL

minikube service nginx-nodeport-service --url


## Check Service Selector

kubectl get service nginx-nodeport-service -o yaml


## Scale Deployment

kubectl scale deployment nginx-service-demo --replicas=5


## Check Final Pods

kubectl get pods


## Check Final Endpoints

kubectl get endpoints nginx-nodeport-service