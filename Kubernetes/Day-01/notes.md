# Kubernetes Day 01 - Notes

## What I Did Today

Today I started my Kubernetes learning journey using Minikube.

I successfully:

- Started Minikube
- Connected kubectl to the cluster
- Verified the Kubernetes node
- Created my first Nginx Pod
- Checked Pod details
- Entered the container using kubectl exec
- Explored the Linux filesystem
- Checked the Nginx version
- Modified the default Nginx web page
- Accessed the website using port forwarding

---

## Problems I Faced

### 1. Docker Engine was not running
**Solution:** Started Docker Desktop and tried again.

### 2. Minikube certificate error
**Solution:** Deleted the old Minikube profile and recreated the cluster.

### 3. API Server stopped
**Solution:** Restarted Minikube and updated the kubectl context.

### 4. Port 8080 already in use
**Solution:** Closed the old port-forward process and started a new one.

### 5. Emoji was not displayed correctly
**Reason:** UTF-8 encoding issue while editing HTML from the terminal.

---

## Key Concepts Learned

- What is Kubernetes
- What is a Cluster
- What is a Node
- What is a Pod
- What is kubectl
- What is Port Forwarding
- Basic Linux commands inside a container

---

## Next Goal

Tomorrow I will learn:

- Deployments
- ReplicaSets
- Services
- YAML files