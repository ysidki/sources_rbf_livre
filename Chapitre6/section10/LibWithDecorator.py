from robot.api.deco import keyword, library 


@library(scope='TEST', listener='SELF') 
class LibraryAsListenerWithDecorator: 

    def end_test(self, data, result): 
        print(f"Le test '{data.name}' s'est terminé avec le statut : {result.status}") 
 
    @keyword 
    def print_message(self, message): 
        print(f"Message : {message}") 