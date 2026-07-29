# Day 23 - Helm Chart Dependencies

## What are Helm Chart Dependencies?

Helm Chart Dependencies allow a parent Helm Chart to include and manage one or more child charts. This helps deploy all required applications together using a single Helm Chart.

---

## Why are Dependencies Used?

Dependencies simplify application deployment by automatically installing all required components together. They also improve consistency, reduce manual work, and make application management easier.

---

## Chart.yaml

The `Chart.yaml` file contains the metadata of a Helm Chart. It also defines the dependencies required by the parent chart.

---

## Dependency Section

The `dependencies` section specifies the name, version, and repository of the child charts that should be downloaded and installed with the parent chart.

---

## helm dependency update

The `helm dependency update` command downloads all dependencies defined in the `Chart.yaml` file and stores them inside the `charts` directory. It also creates or updates the `Chart.lock` file.

---

## charts Directory

The `charts` directory stores downloaded dependency packages in compressed `.tgz` format.

---

## Chart.lock

The `Chart.lock` file records the exact versions and repository information of downloaded dependencies. It ensures that every deployment uses the same dependency versions.

---

## Parent Chart and Child Chart

A Parent Chart manages the deployment of the main application, while Child Charts provide additional services such as databases, caches, or messaging systems.

---

## Real-World Example

An E-commerce application may require multiple services such as a frontend, backend, MySQL database, and Redis cache. Using Helm Chart Dependencies, all these components can be deployed together through a single parent chart.

---

## What I Learned Today

- Understood the concept of Helm Chart Dependencies.
- Learned why dependencies are important in real-world deployments.
- Added a dependency in the `Chart.yaml` file.
- Downloaded dependencies using `helm dependency update`.
- Explored the `charts` directory.
- Understood the purpose of the `Chart.lock` file.
- Installed a Helm Chart with its dependency.
- Verified the Helm Release and Kubernetes Pods.