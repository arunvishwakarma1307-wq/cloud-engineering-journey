# Day 27 - Local Helm Repository

## What is a Local Helm Repository?

A Local Helm Repository is a folder that stores packaged Helm Charts (`.tgz`) along with an `index.yaml` file. It allows Helm to discover and install charts without downloading them from a public repository.

---

## Components of a Local Helm Repository

A basic Helm Repository contains:

- Packaged Helm Charts (`.tgz`)
- index.yaml

Example:

```
helm-repo/
│
├── index.yaml
└── my-chart-0.1.0.tgz
```

---

## helm repo index

The `helm repo index` command generates the `index.yaml` file for the repository.

This file stores chart metadata and allows Helm to locate available charts.

---

## Why HTTP Server is Required?

Helm on Windows does not support adding repositories using the `file://` protocol.

Example error:

```
Error: could not find protocol handler for: file
```

A simple solution is to host the repository using Python's built-in HTTP server.

Example:

```powershell
python -m http.server 8080
```

This serves the repository over HTTP, allowing Helm to access it.

---

## helm repo add

The `helm repo add` command registers a Helm Repository so that Helm can search and install charts from it.

---

## helm search repo

Searches charts available inside configured Helm Repositories.

---

## Installing from a Local Repository

Once the repository is added, charts can be installed just like public repositories.

Example:

```powershell
helm install my-local-app local-repo/my-chart
```

---

## Benefits of a Local Helm Repository

- Store custom Helm Charts
- Test charts locally
- Share charts within a team
- Manage chart versions
- Simulate real-world Helm Repositories

---

## What I Learned Today

- Created a Local Helm Repository.
- Copied a packaged Helm Chart into the repository.
- Generated the `index.yaml` file.
- Learned the purpose of the repository index.
- Solved the Windows `file://` protocol limitation using a Python HTTP server.
- Added the Local Helm Repository to Helm.
- Searched charts from the Local Repository.
- Installed a Helm Chart directly from the Local Repository.