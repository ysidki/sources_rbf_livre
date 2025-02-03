class FailFastListener: 
    ROBOT_LISTENER_API_VERSION = 2 
    
    def __init__(self): 
        self.fail_count = 0 
        self.max_failures = 5 

    def end_test(self, name, attrs): 
        if attrs['status'] == 'FAIL': 
            self.fail_count += 1 
        if self.fail_count >= self.max_failures: 
            print(f"Stopping execution: {self.fail_count} tests have failed.") 
            raise SystemExit("Too many test failures.") 