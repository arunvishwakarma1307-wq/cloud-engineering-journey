# Day-32: GitHub Actions Workflow Security — Commands

## 1. Open Project Folder

```powershell
cd "$HOME\Desktop\cloud engineering journey"
```

## 2. Create Day-32 Folder

```powershell
New-Item -ItemType Directory -Force -Path "CI-CD\Day-32\Screenshots"
```

## 3. Create Workflow File

```powershell
notepad ".github\workflows\day32-workflow-security.yml"
```

## 4. Save README

```powershell
notepad "CI-CD\Day-32\README.md"
```

## 5. Save Notes

```powershell
notepad "CI-CD\Day-32\notes.md"
```

## 6. Save Commands

```powershell
notepad "CI-CD\Day-32\commands.md"
```

## 7. Check Git Status

```powershell
git status
```

## 8. Add Day-32 Files

```powershell
git add "CI-CD/Day-32/"
git add ".github/workflows/day32-workflow-security.yml"
```

## 9. Commit Changes

```powershell
git commit -m "Complete Day 32 workflow security"
```

## 10. Push to GitHub

```powershell
git push
```

## 11. Check Commit History

```powershell
git log -5 --oneline
```