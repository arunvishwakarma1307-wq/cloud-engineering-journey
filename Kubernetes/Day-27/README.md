# Day 27 - Creating and Using a Local Helm Repository

## Objective

Learn how to create a Local Helm Repository, generate its repository index, host it using a local HTTP server, add it to Helm, search charts, and deploy applications directly from the local repository.

---

## Practical Implementation

### Screenshot 1 - Create Local Repository Folder

Created a dedicated folder (`helm-repo`) to store packaged Helm Charts and repository files.

### Screenshot 2 - Copy Packaged Chart

Copied the packaged Helm Chart (`my-chart-0.1.0.tgz`) into the local Helm Repository folder.

### Screenshot 3 - Generate Repository Index

Generated the `index.yaml` file using the `helm repo index` command, creating a valid Helm Repository structure.

### Screenshot 4 - Start Local HTTP Server

Started a local HTTP server using Python to serve the Helm Repository.

> **Note:** Initially, an attempt was made to add the repository using the `file://` protocol. On Windows, Helm returned the following error:

```
Error: could not find protocol handler for: file
```

To resolve this limitation, the repository was served over HTTP using Python's built-in HTTP server:

```powershell
python -m http.server 8080
```

This is also a common real-world approach for serving local Helm Repositories.

### Screenshot 5 - Add Local Repository

Successfully added the local Helm Repository to Helm using the HTTP URL.

### Screenshot 6 - Search Local Repository

Verified that Helm successfully detected the custom chart stored inside the local repository.

### Screenshot 7 - Install Chart from Local Repository

Successfully deployed the application directly from the Local Helm Repository using Helm.

---

## Screenshots

- 01-create-helm-repo-folder.png
- 02-chart-copied-to-helm-repo.png
- 03-local-repository-created.png
- 04-start-local-http-server.png
- 05-local-repository-added.png
- 06-search-local-repository.png
- 07-install-chart-from-local-repository.png

---

## Outcome

Successfully created a Local Helm Repository, generated the repository index, hosted it using a local HTTP server, registered it with Helm, searched the available charts, and deployed an application directly from the custom repository. Also learned about the Windows limitation with the `file://` protocol and implemented the HTTP-based solution used in real-world DevOps environments.