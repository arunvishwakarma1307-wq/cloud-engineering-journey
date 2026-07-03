# Kubernetes Day 01 - My First Nginx Pod

##  Objective

Learn the basics of Kubernetes by creating and managing my first Pod using Minikube.

---

##  What I Learned

Today I learned:

- How to start Minikube
- How to connect kubectl with the cluster
- How to check cluster status
- How to create my first Nginx Pod
- How to inspect Pod details
- How to enter inside a running Pod
- How to explore the Linux filesystem inside a container
- How to check the Nginx version
- How to modify the default Nginx web page
- How to access the Pod using Port Forwarding

---

## Commands Used

```bash
minikube start
kubectl get nodes
kubectl run nginx-pod --image=nginx
kubectl get pods
kubectl describe pod nginx-pod
kubectl exec -it nginx-pod -- /bin/sh
cat /etc/os-release
nginx -v
kubectl port-forward nginx-pod 8080:80
```

---

##  Result

Successfully deployed my first Nginx Pod on Kubernetes and served a custom web page using Nginx.

---

##  Next Goal

- Learn Kubernetes Deployments
- Learn Services
- Learn YAML files 