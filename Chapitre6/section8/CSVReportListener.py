import csv 
 
class CSVReportListener: 
    ROBOT_LISTENER_API_VERSION = 2 

    def __init__(self): 
        self.report_file = open("test_report.csv", "w", newline="") 
        self.writer = csv.writer(self.report_file) 
        self.writer.writerow(["Test Name", "Status", "Message"]) 

    def end_test(self, name, attrs): 
        self.writer.writerow([name, attrs['status'], attrs.get('message', '')]) 

    def close(self): 
        self.report_file.close() 
        print("Custom CSV report generated: test_report.csv") 