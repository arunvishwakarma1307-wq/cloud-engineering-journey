# Day 19 - Commands

## 1. List Helm Releases

```bash
helm list
```

---

## 2. View Release Status

```bash
helm status my-nginx
```

---

## 3. View User Values

```bash
helm get values my-nginx
```

---

## 4. View Generated Manifest

```bash
helm get manifest my-nginx
```

---

## 5. Upgrade Helm Release

```bash
helm upgrade my-nginx bitnami/nginx
```

---

## 6. View Revision History

```bash
helm history my-nginx
```

---

## 7. Rollback Release

```bash
helm rollback my-nginx 1
```

---

## 8. Verify Rollback History

```bash
helm history my-nginx
```

---

## 9. Uninstall Helm Release

```bash
helm uninstall my-nginx
```

---

## 10. Verify Release Removal

```bash
helm list
```