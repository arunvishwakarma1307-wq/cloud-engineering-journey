# Day-16 Commands: Kubernetes StorageClass & Dynamic Provisioning


## Check StorageClass

kubectl get storageclass


## Create Dynamic PVC

kubectl apply -f dynamic-pvc.yaml


## Check PVC

kubectl get pvc


## Check Automatically Created PV

kubectl get pv


## Create Pod with Dynamic PVC

kubectl apply -f nginx-dynamic-pvc-pod.yaml


## Check Pod

kubectl get pods


## Verify PVC Mount

kubectl describe pod nginx-dynamic-pvc-pod


## Verify Storage Data

kubectl exec -it nginx-dynamic-pvc-pod -- cat /usr/share/nginx/html/index.html


## Delete Pod

kubectl delete pod nginx-dynamic-pvc-pod


## Recreate Pod

kubectl apply -f nginx-dynamic-pvc-pod.yaml


## Verify Data After Recreation

kubectl exec -it nginx-dynamic-pvc-pod -- cat /usr/share/nginx/html/index.html