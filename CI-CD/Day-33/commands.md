# Day-33 Commands: Third-Party Actions Security

1. Open Project Folder

cd "$HOME\Desktop\cloud engineering journey"

2. Check Python Version

python --version

3. Run Security Auditor

python scripts/check_action_pinning.py

4. Check Git Status

git status

5. Stage Day-33 Files

git add "CI-CD/Day-33/"
git add ".github/workflows/day33-third-party-security.yml"
git add "scripts/check_action_pinning.py"

6. Commit Changes

git commit -m "Complete Day-33 third-party actions security audit"

7. Push to GitHub

git push

8. Verify GitHub Actions

https://github.com/arunvishwakarma1307-wq/cloud-engineering-journey/actions

9. Audit Results

External Actions checked: 14
SHA-pinned Actions: 2
Actions needing review: 12
Audit status: FAILED (expected security findings)

10. Conclusion

Practiced Python commands, Git commands, and GitHub Actions security auditing.