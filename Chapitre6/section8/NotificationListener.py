import requests 

 
class NotificationListener: 
    ROBOT_LISTENER_API_VERSION = 2 

    def end_test(self, name, attrs): 
        if attrs['status'] == 'FAIL': 
            message = f"Test '{name}' failed!" 
            requests.post('https://slack-webhook-url', json={"text": message}) 