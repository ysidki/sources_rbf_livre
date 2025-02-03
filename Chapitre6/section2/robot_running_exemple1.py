from robot.running.model import TestSuite 

# Créer une suite de tests 
suite = TestSuite(name="Dynamic Test Suite") 

 
# Ajouter un cas de test à la suite 
test = suite.tests.create(name="Test Dynamique") 
test.body.create_keyword(name="Log", args=["Message depuis le test dynamique"]) 
test.body.create_keyword(name="Je suis un mot- clé") 

 # Afficher les mots-clés de la suite 
for test in suite.tests: 
    for item in test.body: 
        if item.type == "KEYWORD":# Ensure we're processing keywords 
            print(f"Mot-clé : {item.name}, Arguments : {item.args}") 