# Day-10 Commands: Kubernetes Deployment


## Check Nodes

kubectl get nodes

Used to check Kubernetes cluster status.


## Create Deployment

kubectl create deployment nginx-deployment --image=nginx --replicas=3

Used to create nginx Deployment with 3 replicas.


## Get Deployments

kubectl get deployments

Used to check Deployment status.


## Get Pods

kubectl get pods

Used to check Pods created by Deployment.


## Describe Deployment

kubectl describe deployment nginx-deployment

Used to view Deployment details.


## Scale Deployment

kubectl scale deployment nginx-deployment --replicas=5

Used to increase Deployment replicas from 3 to 5.


## Check Deployment Image

kubectl get deployment nginx-deployment -o wide

Used to check current Deployment image.


## Update Deployment Image

kubectl set image deployment/nginx-deployment nginx=nginx:1.27

Used to perform Rolling Update.


## Check Rollout Status

kubectl rollout status deployment/nginx-deployment

Used to check update progress.


## Check Rollout History

kubectl rollout history deployment/nginx-deployment

Used to view Deployment revisions.


## Rollback Deployment

kubectl rollout undo deployment/nginx-deployment

Used to return Deployment to previous version.


## Final Check

kubectl get deployment nginx-deployment -o wide

kubectl get pods

Used to verify final Deployment status.