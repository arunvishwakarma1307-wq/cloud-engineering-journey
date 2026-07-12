# Day-10 Notes: Kubernetes Deployment


## Kubernetes Deployment

Deployment is a Kubernetes object used to manage Pods and ReplicaSets.


## Deployment Benefits

- Automatically creates Pods.
- Maintains desired replicas.
- Provides Rolling Updates.
- Supports Rollback.


## Deployment Flow

Deployment

↓

ReplicaSet

↓

Pods


## Replica

Replica defines how many Pods should run.

Example:

replicas: 3


## Scaling

Scaling means increasing or decreasing the number of Pods.

Example:

3 Pods → 5 Pods


## Rolling Update

Rolling Update allows updating applications without downtime.

Old version:

nginx

New version:

nginx:1.27


Kubernetes gradually replaces old Pods with new Pods.


## Rollback

Rollback is used to return to the previous working version.

Example:

nginx:1.27

↓

nginx


## Commands Learned

kubectl create deployment

Used to create Deployment.


kubectl get deployments

Used to check Deployments.


kubectl scale

Used to change replicas.


kubectl set image

Used to update application image.


kubectl rollout status

Used to check update status.


kubectl rollout history

Used to check Deployment history.


kubectl rollout undo

Used to rollback Deployment.


## Day-10 Summary

Today I learned Kubernetes Deployment.

I created a Deployment, managed replicas, performed scaling, updated the application using Rolling Update, checked rollout history, and performed rollback.