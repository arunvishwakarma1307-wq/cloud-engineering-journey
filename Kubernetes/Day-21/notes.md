# Day 21 - Creating Your First Helm Chart

## What is a Helm Chart?

A Helm Chart is a package that contains all the Kubernetes resource definitions required to deploy an application. It groups YAML files, templates, and configuration values into a single reusable package.

---

## Purpose of a Helm Chart

- Package Kubernetes applications.
- Simplify deployments.
- Reuse application templates.
- Customize deployments using values.yaml.
- Manage applications consistently across environments.

---

## Default Helm Chart Structure

- Chart.yaml – Contains chart metadata.
- values.yaml – Stores default configuration values.
- templates/ – Contains Kubernetes resource templates.
- charts/ – Stores dependency charts.
- .helmignore – Specifies files to ignore while packaging.

---

## Chart.yaml

Chart.yaml contains information about the Helm Chart such as its name, version, description, and application version.

---

## values.yaml

The values.yaml file stores default configuration values that can be customized during deployment.

---

## templates/

The templates directory contains Kubernetes YAML templates that are rendered during chart installation.

---

## What I Learned Today

- Created a custom Helm Chart.
- Explored the default Helm Chart structure.
- Understood the purpose of Chart.yaml.
- Understood the purpose of values.yaml.
- Explored the templates folder.
- Installed a custom Helm Chart.
- Verified the Helm Release using Helm.