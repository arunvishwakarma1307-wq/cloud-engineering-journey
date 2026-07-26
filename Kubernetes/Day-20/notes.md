# Day 20 - Helm Custom Values (values.yaml)

## What is values.yaml?

Every Helm Chart contains a file named `values.yaml`.

It stores the default configuration values used during the deployment of an application.

Example configurations include:

- Replica Count
- Image Repository
- Image Tag
- Service Type
- Service Port
- Resources
- Ingress
- Persistence

---

## Why use values.yaml?

Instead of modifying Kubernetes YAML files manually, Helm allows users to customize deployments by editing the `values.yaml` file.

Benefits:

- Easy customization
- Reusable configuration
- Easy maintenance
- Environment-specific deployments
- Production-ready configuration

---

## Default Values

Every Helm Chart comes with predefined configuration values.

Example:

```yaml
replicaCount: 1

service:
  type: LoadBalancer
```

---

## Custom Values

Users can override the default configuration by modifying the `values.yaml` file.

Example:

```yaml
replicaCount: 2

service:
  type: NodePort
```

Helm automatically applies these custom values during deployment.

---

## Viewing Default Values

The following command displays the default configuration of a Helm Chart:

```bash
helm show values bitnami/nginx
```

---

## Exporting values.yaml

The default configuration can be exported into a local file using:

```bash
helm show values bitnami/nginx > values.yaml
```

This allows users to modify the configuration before deployment.

---

## Installing with Custom Values

A customized `values.yaml` file can be used during installation:

```bash
helm install my-nginx bitnami/nginx -f values.yaml
```

Helm deploys the application using the modified configuration.

---

## Verifying Custom Values

The following command displays the values currently applied to the Helm Release:

```bash
helm get values my-nginx
```

This confirms that the customized configuration has been successfully applied.

---

## What I Learned Today

- Viewed the default Helm Chart configuration.
- Exported the default `values.yaml` file.
- Modified Helm configuration values.
- Customized the Replica Count.
- Changed the Service Type.
- Installed a Helm Chart using custom values.
- Verified that the customized values were successfully applied.