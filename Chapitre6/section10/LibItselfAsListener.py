class LibItselfAsListener: 

    ROBOT_LIBRARY_SCOPE = 'SUITE' 
    ROBOT_LISTENER_API_VERSION = 2 

    def __init__(self): 
        self.ROBOT_LIBRARY_LISTENER = self 
 
    def _end_test(self, name, attributes): 
        print(f"Le test '{name}' s'est terminé avec le statut : {attributes['status']}") 

    def calculate_sum(self, a, b): 
        return a + b 