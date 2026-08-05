# Day 30 - Kubernetes ConfigMaps

## Objective

Learn how to create and manage Kubernetes ConfigMaps, understand how configuration data is separated from application code, and use ConfigMaps inside Pods through Environment Variables.

---

## Practical Implementation

### Screenshot 1 - View Kubernetes Namespaces

Verified the available namespaces in the Kubernetes cluster before creating ConfigMaps.

### Screenshot 2 - Create ConfigMap

Created a ConfigMap named `app-config` using literal key-value pairs.

The ConfigMap stores application configuration separately from the application itself.

### Screenshot 3 - Describe ConfigMap

Viewed the detailed information of the ConfigMap using `kubectl describe`.

Verified that all configuration keys and values were successfully stored.

### Screenshot 4 - View ConfigMap YAML

Exported the ConfigMap in YAML format.

Observed the Kubernetes object structure including metadata and stored configuration values.

### Screenshot 5 - Create Pod Using ConfigMap

Created a Pod that reads configuration values from the ConfigMap as Environment Variables.

Verified that the Pod started successfully.

### Screenshot 6 - Verify Environment Variables

Executed commands inside the running Pod to verify that the environment variables were successfully loaded from the ConfigMap.

Confirmed that:

- APP_NAME = CloudVault
- APP_ENV = Development

### Screenshot 7 - Delete Pod

Deleted the demonstration Pod after verification.

This cleanup removed only the Pod while the ConfigMap remained available inside the cluster.

---

## Screenshots

- 01-cluster-namespaces.png
- 02-create-configmap.png
- 03-describe-configmap.png
- 04-configmap-yaml.png
- 05-create-configmap-pod.png
- 06-configmap-environment-variables.png
- 07-delete-configmap-pod.png

---

## Key Concepts Learned

- ConfigMaps store application configuration separately from application code.
- Configuration can be managed without rebuilding container images.
- ConfigMaps can be consumed by Pods as Environment Variables.
- Kubernetes stores ConfigMaps as API objects.
- ConfigMaps simplify configuration management across multiple environments.
- Deleting a Pod does not delete the ConfigMap.

---

## Outcome

Successfully created a Kubernetes ConfigMap, verified its stored data, viewed its YAML representation, used the ConfigMap inside a Pod through Environment Variables, confirmed the configuration values from within the container, and cleaned up the demonstration Pod while preserving the ConfigMap. This demonstrated how Kubernetes separates application configuration from application code, which is a common practice in production environments.