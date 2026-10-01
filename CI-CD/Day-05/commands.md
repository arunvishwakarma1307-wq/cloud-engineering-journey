# Day-05 — Commands Used

## 1. Create Day-05 Directory

```powershell
New-Item -ItemType Directory ".\CI-CD\Day-05"
```

Creates the Day-05 directory inside the CI-CD folder.

---

## 2. Enter Day-05 Directory

```powershell
cd ".\CI-CD\Day-05"
```

Moves the terminal into the Day-05 directory.

---

## 3. Check Current Location

```powershell
Get-Location
```

Used to verify the current working directory.

---

## 4. List Day-05 Files and Folders

```powershell
Get-ChildItem
```

Used to check the contents of the Day-05 directory.

---

## 5. Check Git Status

```powershell
git status
```

Used to check modified, staged, and untracked files.

---

## 6. Read the GitHub Actions Workflow

```powershell
Get-Content "..\..\.github\workflows\ci.yml"
```

Used to view the GitHub Actions workflow from the repository root.

---

## 7. Stage the Updated Workflow

```powershell
git add "..\..\.github\workflows\ci.yml"
```

Stages the updated GitHub Actions workflow for the commit.

---

## 8. Commit the Day-05 Workflow

```powershell
git commit -m "Add Day-05 job outputs workflow"
```

Creates a Git commit for the Day-05 Job Outputs workflow changes.

---

## 9. Push Changes to GitHub

```powershell
git push
```

Pushes the committed changes to the remote GitHub repository.

---

## 10. Verify Day-05 Screenshots

```powershell
Get-ChildItem ".\Screenshots"
```

Used to verify that the Day-05 screenshots were present in the Screenshots folder.

---

# Screenshot References

## Screenshot 01

**File:** `01-job-output-workflow-success.png`

**Related Action:** GitHub Actions workflow completed successfully.

**Shows:** Overall workflow success with the `build` and `test` jobs completed successfully.

---

## Screenshot 02

**File:** `02-build-value-generated.png`

**Related Action:** Build job generated the Job Output value.

**Shows:** The generated build value:

`day-05-build-001`

---

## Screenshot 03

**File:** `03-job-output-received.png`

**Related Action:** Test job received the output from the Build job.

**Shows:**

`Received build version: day-05-build-001`

and confirmation that the test job received the output successfully.

---

# All Day-05 Screenshot Names

1. `01-job-output-workflow-success.png`
2. `02-build-value-generated.png`
3. `03-job-output-received.png`