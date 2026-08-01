# Day 26 - Helm Repository Index (index.yaml)

## What is index.yaml?

The `index.yaml` file is the main file of a Helm Repository. It acts as a catalog that stores information about all packaged Helm Charts available in the repository.

---

## Why is index.yaml Important?

Helm does not scan every `.tgz` package individually. Instead, it reads the `index.yaml` file to quickly find available charts and their versions.

---

## Information Stored in index.yaml

The file contains:

- Chart Name
- Chart Version
- Application Version
- Description
- Dependencies
- Download URL
- Digest (SHA256)
- Creation Time

---

## helm repo index

The `helm repo index` command generates the `index.yaml` file for a Helm Repository.

---

## entries

The `entries` section lists all charts available in the repository.

Each chart contains its own metadata and version information.

---

## urls

The `urls` field tells Helm where the packaged chart (`.tgz`) is located.

During installation, Helm downloads the chart using this URL.

---

## Benefits of index.yaml

- Faster chart lookup
- Easy version management
- Organized repository structure
- Simplified chart installation
- Supports multiple chart versions

---

## What I Learned Today

- Learned the purpose of `index.yaml`.
- Generated a repository index using Helm.
- Explored the structure of `index.yaml`.
- Understood the `entries` and `urls` sections.
- Learned how Helm locates packaged charts using the repository index.