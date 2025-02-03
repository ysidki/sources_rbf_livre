from my_custom_listener import MyCustomListener 

class LibWithExternalListener: 
    ROBOT_LIBRARY_SCOPE = 'GLOBAL' 
    ROBOT_LIBRARY_LISTENER = MyCustomListener() 


    def perform_task(self, arg): 
        print(f"Execution d'une tâche avec l'argument : {arg}") 