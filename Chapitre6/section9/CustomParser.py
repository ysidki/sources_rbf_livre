from robot.api import TestSuiteBuilder 

class CustomParser: 

    EXTENSION = "robot"

    def parse(self, source): 

        # Charger la suite de tests à partir du fichier source avec TestSuiteBuilder 
        suite = TestSuiteBuilder().build(source) 

        # Personnalisation des tests en utilisant les objets de la suite 
        for test in suite.tests: 
            test.tags.add("custom_tag")  # Ajouter un tag personnalisé à chaque test 
            test.doc = "Automatically enriched test"  # Ajouter une documentation spécifique 

        # Retourner la suite modifiée 
        return suite 