import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / "app"))

from app import get_app_status


def test_application_status():
    result = get_app_status()

    assert result["application"] == "Day-35 CI/CD Pipeline"
    assert result["status"] == "Running"
    assert result["message"] == "End-to-End CI/CD Pipeline is working!"