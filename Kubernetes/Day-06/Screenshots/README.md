# Day-06: Kubernetes Namespaces

## Topic
Working with Kubernetes Namespaces

## What I Learned

In this practice, I learned how namespaces are used in Kubernetes to organize and separate resources inside a cluster.

I created a new namespace named `dev` and deployed an nginx pod inside that namespace.

I also learned how to view resources from a specific namespace and from all namespaces.

## Practical Steps

### 1. Check Existing Namespaces

Command used:

kubectl get ns

I checked the available namespaces in the Kubernetes cluster.

---

### 2. Create Namespace

Created a namespace named `dev`.

Command used:

kubectl create namespace dev

---

### 3. Create Pod Inside Dev Namespace

Created an nginx pod inside the dev namespace.

Command used:

kubectl run nginx-dev --image=nginx -n dev

---

### 4. Check Pods in Dev Namespace

Command used:

kubectl get pods -n dev

The nginx-dev pod was running successfully.

---

### 5. Check Pods From All Namespaces

Command used:

kubectl get pods -A

This command displays pods from all namespaces.

---

### 6. Describe Pod Details

Command used:

kubectl describe pod nginx-dev -n dev

Used this command to check detailed information about the pod.

---

## Screenshots

1. Get namespaces
2. Dev namespace pod running
3. All namespaces pods
4. Describe pod details

## Conclusion

Completed basic Kubernetes namespace operations and learned how resources can be organized using namespaces.