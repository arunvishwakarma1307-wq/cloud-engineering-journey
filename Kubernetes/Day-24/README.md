# Day 24 - Helm Chart Packaging

## Objective

Learn how to package a Helm Chart into a compressed `.tgz` file and inspect its metadata and contents before distributing it through a Helm Repository.

---

## Practical Implementation

### Screenshot 1 - Verify Current Directory

Verified that the current working directory was the Helm Chart directory before packaging.

### Screenshot 2 - Package the Helm Chart

Packaged the Helm Chart into a compressed `.tgz` file using the `helm package` command.

### Screenshot 3 - Verify Packaged Chart

Verified that the packaged Helm Chart file was successfully created.

### Screenshot 4 - Display Chart Information

Displayed the metadata of the packaged Helm Chart using the `helm show chart` command.

### Screenshot 5 - View Package Contents

Verified the files and directories stored inside the packaged Helm Chart without extracting it.

---

## Screenshots

- 01-current-directory.png
- 02-package-helm-chart.png
- 03-verify-package.png
- 04-show-chart-info.png
- 05-package-contents.png

---

## Outcome

Successfully packaged a Helm Chart into a `.tgz` file, verified the generated package, examined its metadata, and inspected its internal contents. This demonstrated how Helm packages charts for sharing, versioning, and deployment through Helm Repositories.