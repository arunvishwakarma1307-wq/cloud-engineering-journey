# Day-33 Notes: Third-Party Actions & Supply Chain Security

## 1. What is a Third-Party Action?
A third-party action is a reusable GitHub Actions component created by an external developer or organization.

Example:
`actions/checkout@v4`

It is used to access repository files inside a GitHub Actions workflow.

## 2. What is Supply Chain Security?
Supply chain security means protecting the tools, libraries, dependencies, and external components used in a software project.

In GitHub Actions, we should review external Actions before using them.

## 3. Version Tag vs Commit SHA

Version tag example:
`actions/checkout@v4`

Full commit SHA example:
`actions/checkout@11bd71901bbe5b1630ceea73d27597364c9af683`

A version tag can potentially point to a different commit later. A full commit SHA identifies a specific commit.

## 4. Why Pin Actions to SHA?
- It makes the referenced version more predictable.
- It reduces risks from unexpected tag changes.
- It helps maintain workflow consistency.
- It supports better supply chain security.

## 5. Python Security Auditor
File:
`scripts/check_action_pinning.py`

This script scans GitHub workflow files and checks external Action references.

It identifies:
- SHA-pinned Actions
- Actions using version tags
- References that need security review

## 6. Audit Results

Total external Actions checked: 14

SHA-pinned Actions: 2

Actions needing review: 12

Audit status: FAILED

The failure was expected because 12 Action references were not pinned to full commit SHAs.

## 7. Important Commands

Run the security auditor:

`python scripts/check_action_pinning.py`

Check Python version:

`python --version`

Check Git status:

`git status`

## 8. Important Learning
A full 40-character SHA pin is more reliable than a movable version tag for identifying the exact commit used by an external Action.

Note: This auditor checks SHA format only. It does not verify the authenticity or safety of the referenced code.

## 9. Conclusion
Learned how to identify unpinned third-party GitHub Actions and created a Python-based automated security checker.