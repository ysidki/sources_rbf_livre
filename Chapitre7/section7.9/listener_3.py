class ProgressListener:
    ROBOT_LISTENER_API_VERSION = 2

    def start_suite(self, name, attrs):
        print(f"Suite '{name}' started.")

    def start_test(self, name, attrs):
        print(f"Running test: {name}")

    def end_test(self, name, attrs):
        print(f"Test '{name}' completed with status: {attrs['status']}")
