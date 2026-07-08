# Day-06 Commands

## Check namespaces

kubectl get ns


## Create namespace

kubectl create namespace dev


## Create nginx pod in dev namespace

kubectl run nginx-dev --image=nginx -n dev


## Get pods from dev namespace

kubectl get pods -n dev


## Get pods from all namespaces

kubectl get pods -A


## Describe pod details

kubectl describe pod nginx-dev -n dev