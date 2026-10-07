# CI/CD Day-10 — Commands

## 1. Go to CI/CD directory

    cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey\CI-CD"

Used to open the CI/CD project directory.

---

## 2. Create Day-10 directory

    New-Item -ItemType Directory ".\Day-10"

Used to create the Day-10 working directory.

---

## 3. Enter Day-10 directory

    cd ".\Day-10"

Used to enter the Day-10 directory.

---

## 4. View the existing GitHub Actions workflow

    Get-Content "..\..\.github\workflows\ci.yml"

Used to check the current `ci.yml` workflow before making the Day-10 changes.

---

## 5. Check Git status

    git status

Used to check the modified workflow file and Git repository state.

---

## 6. Stage the workflow file

    git add "..\..\.github\workflows\ci.yml"

Used to stage the modified GitHub Actions workflow.

---

## 7. Commit Day-10 workflow changes

    git commit -m "Add Day-10 always condition and failure handling"

Used to create the Day-10 Git commit.

---

## GitHub Actions Verification

The workflow was pushed to GitHub and verified through GitHub Actions.

### Screenshot References

- `Screenshots/01-workflow-always-result.png`
  - Shows the overall workflow result.

- `Screenshots/02-always-cleanup-success.png`
  - Shows the successful cleanup job and `always()` execution.