# Day-15 Commands: Kubernetes Persistent Volume (PV) & PVC


## Create Persistent Volume

kubectl apply -f pv.yaml


## Check Persistent Volume

kubectl get pv


## Create Persistent Volume Claim

kubectl apply -f pvc.yaml


## Check Persistent Volume Claim

kubectl get pvc


## Create Pod with PVC Mount

kubectl apply -f nginx-pvc-pod.yaml


## Check Pods

kubectl get pods


## Describe PVC Mounted Pod

kubectl describe pod nginx-pvc-pod


## Access Pod Storage Data

kubectl exec -it nginx-pvc-pod -- bash


cd /usr/share/nginx/html


echo "Hello from Persistent Volume" > index.html


cat index.html


exit


## Verify Persistent Volume Data

kubectl exec -it nginx-pvc-pod -- cat /usr/share/nginx/html/index.html


## Delete Pod for Persistence Test

kubectl delete pod nginx-pvc-pod


## Recreate Pod

kubectl apply -f nginx-pvc-pod.yaml


## Check Data After Pod Recreation

kubectl exec -it nginx-pvc-pod -- cat /usr/share/nginx/html/index.html


## Final PV Status

kubectl get pv


## Final PVC Status

kubectl get pvc