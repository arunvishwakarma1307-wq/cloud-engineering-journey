# Day 26 - Understanding Helm Repository Index

## Objective

Learn the purpose of the `index.yaml` file in a Helm Repository, generate it using Helm, and understand how Helm uses it to locate and manage packaged charts.

---

## Practical Implementation

### Screenshot 1 - Verify Packaged Chart

Verified that the packaged Helm Chart (`.tgz`) exists before creating the repository index.

### Screenshot 2 - Generate Repository Index

Generated the `index.yaml` file using the `helm repo index` command.

### Screenshot 3 - View index.yaml

Displayed the contents of the generated `index.yaml` file and examined the chart entries, metadata, and URLs.

---

## Screenshots

- 01-check-packaged-chart.png
- 02-index-yaml-created.png
- 03-view-index-yaml.png

---

## Outcome

Successfully generated and examined the `index.yaml` file of a Helm Repository. Learned how Helm stores chart metadata and uses the repository index to locate and manage packaged Helm Charts during search and installation.