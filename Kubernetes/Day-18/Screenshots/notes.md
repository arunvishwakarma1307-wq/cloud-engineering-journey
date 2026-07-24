# Day 18 - Helm Basics

## What is Helm?

Helm is the package manager for Kubernetes. It helps users deploy, manage, upgrade, and uninstall Kubernetes applications using pre-configured packages called Helm Charts.

---

## Helm Chart

A Helm Chart is a collection of Kubernetes YAML files packaged together. It allows applications to be installed with a single command.

---

## Why Helm?

- Simplifies Kubernetes deployments.
- Reuses existing application templates.
- Easy installation and upgrades.
- Easy rollback to previous versions.
- Saves time by avoiding manual YAML creation.

---

## Helm Repository

A Helm Repository stores Helm Charts.

Example:

Bitnami Repository

---

## Helm Release

When a Helm Chart is installed, Kubernetes creates a Release.

Example:

my-nginx

---

## Helm Workflow

Helm Repository
        ↓
Search Chart
        ↓
Install Chart
        ↓
Create Release
        ↓
Deploy Application

---

## What I Learned Today

- Installed Helm on Windows.
- Added Bitnami Helm Repository.
- Updated Helm Repository.
- Searched available Helm Charts.
- Installed NGINX using Helm.
- Verified Helm Release.
- Verified Kubernetes Pods, Services, and Deployments.