# Day 20 - Commands

## 1. Search Helm Repository

```bash
helm search repo nginx
```

---

## 2. View Default Chart Values

```bash
helm show values bitnami/nginx
```

---

## 3. Export Default values.yaml

```bash
helm show values bitnami/nginx > values.yaml
```

---

## 4. Edit Replica Count

```yaml
replicaCount: 2
```

---

## 5. Change Service Type

```yaml
service:
  type: NodePort
```

---

## 6. Install Helm Chart Using Custom values.yaml

```bash
helm install my-nginx bitnami/nginx -f values.yaml
```

---

## 7. Verify Applied Custom Values

```bash
helm get values my-nginx
```