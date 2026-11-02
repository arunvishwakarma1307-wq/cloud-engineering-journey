def get_app_status():
    return {
        "application": "Day-35 CI/CD Pipeline",
        "status": "Running",
        "message": "End-to-End CI/CD Pipeline is working!"
    }


if __name__ == "__main__":
    print(get_app_status())