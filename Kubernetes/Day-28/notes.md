# Day 28 - Helm Upgrade and Rollback

## What is Helm Upgrade?

Helm Upgrade is used to update an existing Helm Release without uninstalling and reinstalling the application.

It applies the latest changes while preserving the release history.

---

## Why Use Helm Upgrade?

- Update application configuration
- Deploy a new chart version
- Modify Kubernetes resources
- Keep application downtime minimal

---

## Release Revision

Every Helm Release has a Revision Number.

Initially:

Revision 1

After first upgrade:

Revision 2

After another upgrade:

Revision 3

Each upgrade creates a new revision.

---

## helm history

The `helm history` command displays all revisions of a Helm Release.

It shows:

- Revision Number
- Status
- Chart Version
- Update Time

This helps track every deployment made to the application.

---

## What is Helm Rollback?

Helm Rollback restores a previous stable release.

Instead of reinstalling the application, Helm simply deploys an earlier revision.

---

## Important Concept

Rollback does **not** delete release history.

Example:

Revision 1 → Initial Deployment

Revision 2 → Upgrade

Revision 3 → Rollback to Revision 1

Notice that Helm creates a new revision after rollback.

---

## Why Rollback is Important?

Rollback helps quickly recover from:

- Failed Deployments
- Application Bugs
- Incorrect Configuration Changes
- Production Issues

This makes Helm reliable for production environments.

---

## Benefits of Helm Upgrade & Rollback

- Easy application updates
- Complete deployment history
- Quick recovery from failures
- Safe production deployments
- Version tracking

---

## What I Learned Today

- Learned how Helm Upgrade works.
- Upgraded an existing Helm Release.
- Understood release revisions.
- Viewed release history using Helm.
- Performed a rollback to a previous revision.
- Learned that rollback creates a new revision while preserving deployment history.