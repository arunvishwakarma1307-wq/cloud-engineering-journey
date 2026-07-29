# Day 23 - Helm Chart Dependencies

## Objective

Learn how Helm Chart Dependencies work and how to manage dependent charts using the `Chart.yaml` and `Chart.lock` files.

---

## Practical Implementation

### Screenshot 1 - Open Chart.yaml

Opened the `Chart.yaml` file to configure chart dependencies.

### Screenshot 2 - Update Helm Dependencies

Downloaded the MySQL dependency using the `helm dependency update` command.

### Screenshot 3 - Verify Downloaded Dependency

Verified that the MySQL Helm Chart package was downloaded into the `charts` directory.

### Screenshot 4 - View Chart.lock

Verified that the `Chart.lock` file was automatically generated after updating dependencies.

### Screenshot 5 - Install Chart with Dependency

Installed the parent Helm Chart along with the MySQL dependency.

### Screenshot 6 - Verify Helm Release

Verified that the Helm Release was successfully deployed.

### Screenshot 7 - Verify Kubernetes Pods

Verified that both the application pod and the MySQL dependency pod were created successfully.

---

## Screenshots

- 01-open-chart-yaml.png
- 02-helm-dependency-update.png
- 03-downloaded-mysql-chart.png
- 04-chart-lock.png
- 05-install-chart-with-dependency.png
- 06-verify-release.png
- 07-verify-pods.png

---

## Outcome

Successfully configured Helm Chart Dependencies by adding MySQL as a dependency in the `Chart.yaml` file, downloading the required dependency, generating the `Chart.lock` file, deploying the parent chart with its dependency, and verifying that both the Helm Release and Kubernetes Pods were created successfully.