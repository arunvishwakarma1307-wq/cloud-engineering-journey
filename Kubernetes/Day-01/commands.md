# Kubernetes Day 01 - Commands

## 1. Start Minikube

```bash
minikube start
```

Starts the local Kubernetes cluster.

---

## 2. Check Cluster Nodes

```bash
kubectl get nodes
```

Shows the nodes in the Kubernetes cluster.

---

## 3. Create an Nginx Pod

```bash
kubectl run nginx-pod --image=nginx
```

Creates a Pod using the official Nginx image.

---

## 4. Check Pods

```bash
kubectl get pods
```

Displays all Pods in the current namespace.

---

## 5. View Pod Details

```bash
kubectl describe pod nginx-pod
```

Shows detailed information about the Pod, including events.

---

## 6. Enter the Pod

```bash
kubectl exec -it nginx-pod -- /bin/sh
```

Opens a shell inside the running container.

---

## 7. Check Linux Version

```bash
cat /etc/os-release
```

Displays the Linux distribution running inside the container.

---

## 8. Check Nginx Version

```bash
nginx -v
```

Displays the installed Nginx version.

---

## 9. Port Forward

```bash
kubectl port-forward nginx-pod 8080:80
```

Makes the Pod accessible on your local machine using port 8080.