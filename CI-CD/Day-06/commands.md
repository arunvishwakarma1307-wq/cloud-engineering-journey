# Day-06 — Commands Used

## 1. Go to Repository Root

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey"
```

Used to move to the repository root before working with the Day-06 directory.

---

## 2. Create Day-06 Directory

```powershell
New-Item -ItemType Directory ".\CI-CD\Day-06"
```

Creates the Day-06 directory inside the CI-CD folder.

---

## 3. Enter Day-06 Directory

```powershell
cd ".\CI-CD\Day-06"
```

Moves the terminal into the Day-06 directory.

---

## 4. Check Current Location

```powershell
Get-Location
```

Used to verify that the terminal is inside the Day-06 directory.

---

## 5. Read the Existing GitHub Actions Workflow

```powershell
Get-Content "..\..\.github\workflows\ci.yml"
```

Used to view the existing GitHub Actions workflow before making the Day-06 changes.

---

## 6. Open the GitHub Actions Workflow

```powershell
notepad "..\..\.github\workflows\ci.yml"
```

Used to open the workflow file in Notepad for editing.

---

## 7. Check Git Status

```powershell
git status
```

Used to check modified, staged, and untracked files before committing changes.

---

## 8. Stage the Workflow

```powershell
git add "..\..\.github\workflows\ci.yml"
```

Stages the updated GitHub Actions workflow for the commit.

---

## 9. Commit the Day-06 Conditional Workflow

```powershell
git commit -m "Add Day-06 conditional workflow"
```

Creates the commit for the Day-06 TRUE condition workflow.

---

## 10. Push the TRUE Condition Workflow

```powershell
git push
```

Pushes the Day-06 TRUE condition workflow to GitHub.

### Screenshot Reference

`01-conditional-step-success.png`

This screenshot shows the conditional step executing successfully when the condition is TRUE.

---

## 11. Open the Workflow for FALSE Condition Testing

```powershell
notepad "..\..\.github\workflows\ci.yml"
```

Used again to temporarily change the condition so that it evaluates to FALSE.

---

## 12. Check Git Status After FALSE Condition Change

```powershell
git status
```

Used to verify that the workflow file was modified for the FALSE condition test.

---

## 13. Stage the FALSE Condition Test

```powershell
git add "..\..\.github\workflows\ci.yml"
```

Stages the temporary FALSE condition change.

---

## 14. Commit the FALSE Condition Test

```powershell
git commit -m "Test Day-06 false condition"
```

Creates the commit used to test the FALSE condition.

---

## 15. Push the FALSE Condition Test

```powershell
git push
```

Pushes the FALSE condition test to GitHub.

### Screenshot Reference

`02-conditional-step-skipped.png`

This screenshot shows the conditional step being skipped when the condition is FALSE.

---

## 16. Restore the TRUE Condition

```powershell
notepad "..\..\.github\workflows\ci.yml"
```

Used to restore the workflow back to the TRUE condition after testing the FALSE condition.

---

## 17. Check Git Status After Restoring TRUE Condition

```powershell
git status
```

Used to verify that the workflow file was modified after restoring the TRUE condition.

---

## 18. Stage the Restored Workflow

```powershell
git add "..\..\.github\workflows\ci.yml"
```

Stages the restored TRUE condition workflow.

---

## 19. Commit the Restored Workflow

```powershell
git commit -m "Restore Day-06 true condition"
```

Creates the final commit that restores the TRUE condition.

---

## 20. Push the Final Workflow

```powershell
git push
```

Pushes the final TRUE condition workflow to GitHub.

---

# Screenshot References

## Screenshot 01

**File:** `01-conditional-step-success.png`

**Related Action:** TRUE condition test.

**Shows:** The conditional step executed successfully.

---

## Screenshot 02

**File:** `02-conditional-step-skipped.png`

**Related Action:** FALSE condition test.

**Shows:** The conditional step was skipped because the condition was FALSE.

---

# All Day-06 Screenshot Names

1. `01-conditional-step-success.png`
2. `02-conditional-step-skipped.png`