import sqlite3

class DatabaseLogger:
    ROBOT_LISTENER_API_VERSION = 2

    def __init__(self):
        self.connection = sqlite3.connect("test_results.db")
        self.cursor = self.connection.cursor()
        self.cursor.execute(
            "CREATE TABLE IF NOT EXISTS results (test_name TEXT, status TEXT, duration REAL)"
        )

    def end_test(self, name, attrs):
        self.cursor.execute(
            "INSERT INTO results (test_name, status, duration) VALUES (?, ?, ?)",
            (name, attrs['status'], attrs['elapsedtime'] / 1000),
        )
        self.connection.commit()

    def close(self):
        self.connection.close()
        print("Test results saved to database.")
