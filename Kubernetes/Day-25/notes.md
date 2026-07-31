# Day 25 - Helm Repository

## What is a Helm Repository?

A Helm Repository is a collection of packaged Helm Charts stored on a web server. It allows users to download and install charts easily.

---

## Why Helm Repositories are Used

Helm Repositories provide a centralized location to store, distribute, and manage Helm Charts. Instead of sharing chart files manually, users can install them directly from the repository.

---

## helm repo list

Displays all Helm Repositories currently configured on the local system.

---

## helm search repo

Searches Helm Charts available inside configured repositories.

Example:

- Search all charts
- Search a specific chart

---

## helm show chart

Displays chart metadata without downloading or installing the chart.

Information includes:

- Chart Name
- Version
- Application Version
- Description
- Dependencies

---

## helm show values

Displays the default configuration (`values.yaml`) of a Helm Chart.

These values can be customized during installation.

---

## helm show all

Displays complete information about a Helm Chart, including:

- Metadata
- Default Values
- README
- Documentation

---

## Benefits of Helm Repositories

- Centralized chart storage
- Easy chart sharing
- Version management
- Quick installation
- Better collaboration
- Simplified application deployment

---

## What I Learned Today

- Learned the purpose of Helm Repositories.
- Listed configured repositories.
- Searched charts inside a repository.
- Retrieved chart metadata.
- Viewed default chart values.
- Explored complete chart information before deployment.
- Understood why DevOps engineers inspect charts before installing them.