# Day-17 Commands: Kubernetes Ingress


## Enable Ingress Controller

minikube addons enable ingress


## Check Ingress Controller Pods

kubectl get pods -n ingress-nginx


## Apply Deployment

kubectl apply -f nginx-deployment.yaml


## Apply Service

kubectl apply -f nginx-service.yaml


## Apply Ingress

kubectl apply -f nginx-ingress.yaml


## Check Ingress

kubectl get ingress


## Describe Ingress

kubectl describe ingress nginx-ingress


## Check Services

kubectl get svc


## Check Endpoints

kubectl get endpoints


## Check Pods

kubectl get pods -o wide


## Get Ingress Controller Service

kubectl get svc -n ingress-nginx


## Start Minikube Tunnel

minikube tunnel


## Get Ingress URL

minikube service ingress-nginx-controller -n ingress-nginx --url


## Port Forward Ingress Controller

kubectl port-forward -n ingress-nginx svc/ingress-nginx-controller 8080:80


## Test Ingress Routing

curl.exe -H "Host: nginx.local" http://127.0.0.1:61570