# Day-12 Kubernetes ConfigMap & Secrets Commands


## Check Cluster

kubectl get nodes


## Create ConfigMap

kubectl create configmap nginx-config --from-file=nginx-config.conf


## Get ConfigMaps

kubectl get configmaps


## Describe ConfigMap

kubectl describe configmap nginx-config


## Create ConfigMap Volume Pod

kubectl apply -f nginx-configmap-volume-pod.yaml


## Check Pods

kubectl get pods


## Verify ConfigMap Mount

kubectl exec -it nginx-config-volume-pod -- ls /etc/nginx/conf.d


kubectl exec -it nginx-config-volume-pod -- cat /etc/nginx/conf.d/nginx-config.conf



## Create Secret

kubectl create secret generic app-secret-volume --from-file=secret-data.txt


## Get Secrets

kubectl get secrets


## Create Secret Volume Pod

kubectl apply -f nginx-secret-volume-pod.yaml


## Verify Secret Mount

kubectl exec -it nginx-secret-volume-pod -- ls /etc/secret


kubectl exec -it nginx-secret-volume-pod -- cat /etc/secret/secret-data.txt



## Check Secret YAML

kubectl get secret app-secret-volume -o yaml


## Decode Secret

[System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("encoded-value"))


## Final Pod Check

kubectl get pods