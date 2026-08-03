# Day 28 - Helm Upgrade and Rollback

## Objective

Learn how to upgrade an existing Helm Release, understand release revisions, view release history, and perform rollback to restore a previous stable version.

---

## Practical Implementation

### Screenshot 1 - View Current Releases

Listed all deployed Helm Releases and observed the current revision number before performing any upgrade.

### Screenshot 2 - Upgrade Helm Release

Updated the Helm Chart version and upgraded the existing release using the `helm upgrade` command.

The release was successfully upgraded and a new revision was created.

### Screenshot 3 - View Release History

Checked the release history using `helm history`.

Verified that the previous revision was preserved and the upgraded release became the active deployment.

### Screenshot 4 - Rollback Release

Performed a rollback to Revision 1 using the `helm rollback` command.

The rollback completed successfully without deleting previous revisions.

### Screenshot 5 - Verify Rollback History

Viewed the release history again after rollback.

Observed that Helm created a new revision for the rollback operation while restoring the previous application state.

---

## Screenshots

- 01-current-releases.png
- 02-upgrade-release.png
- 03-release-history.png
- 04-rollback-release.png
- 05-history-after-rollback.png

---

## Key Concepts Learned

- Helm Upgrade updates an existing release without reinstalling the application.
- Every upgrade creates a new release revision.
- Helm maintains complete release history.
- Rollback restores a previous stable release.
- Rollback creates a new revision instead of deleting existing revisions.
- Release history makes application recovery fast and reliable.

---

## Outcome

Successfully upgraded an existing Helm Release, verified revision history, performed a rollback to a previous stable version, and confirmed that Helm preserves every deployment as a separate revision. Learned how Helm's release history enables safe application upgrades and quick recovery in real-world DevOps environments.