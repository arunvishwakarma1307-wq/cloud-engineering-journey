from pathlib import Path
import re
import sys

WORKFLOW_DIR = Path(".github/workflows")

# GitHub Actions ko full 40-character commit SHA se pin hona chahiye.
SHA_PATTERN = re.compile(r"^[a-fA-F0-9]{40}$")

USES_PATTERN = re.compile(
    r"^\s*uses:\s*['\"]?([^'\"\s#]+)",
    re.IGNORECASE
)


def scan_workflows():
    if not WORKFLOW_DIR.exists():
        print("ERROR: .github/workflows directory not found.")
        return 2

    workflow_files = list(WORKFLOW_DIR.glob("*.yml"))
    workflow_files += list(WORKFLOW_DIR.glob("*.yaml"))

    if not workflow_files:
        print("No workflow files found.")
        return 2

    total_actions = 0
    unsafe_actions = []

    print("GitHub Actions Security Audit")
    print("=" * 40)

    for file_path in sorted(workflow_files):
        print(f"\nScanning: {file_path}")

        lines = file_path.read_text(encoding="utf-8").splitlines()

        for line_number, line in enumerate(lines, start=1):
            match = USES_PATTERN.match(line)

            if not match:
                continue

            action_reference = match.group(1)

            # Local reusable workflows are not external actions.
            if action_reference.startswith("./"):
                continue

            # Docker container references are handled separately.
            if action_reference.startswith("docker://"):
                continue

            total_actions += 1

            if "@" not in action_reference:
                unsafe_actions.append(
                    (file_path, line_number, action_reference)
                )
                print(f"WARNING: {action_reference}")
                continue

            action_ref = action_reference.rsplit("@", 1)[1]

            if SHA_PATTERN.fullmatch(action_ref):
                print(f"PASS: {action_reference}")
            else:
                unsafe_actions.append(
                    (file_path, line_number, action_reference)
                )
                print(f"WARNING: {action_reference} is not SHA-pinned")

    print("\n" + "=" * 40)
    print(f"Total external actions checked: {total_actions}")
    print(f"Actions needing review: {len(unsafe_actions)}")

    if unsafe_actions:
        print("\nSECURITY AUDIT: FAILED")
        print("Review the following action references:")

        for file_path, line_number, reference in unsafe_actions:
            print(f"{file_path}:{line_number} -> {reference}")

        return 1

    print("\nSECURITY AUDIT: PASSED")
    return 0


if __name__ == "__main__":
    sys.exit(scan_workflows())