from robot.api import TestSuite 
 
# Créer une suite de tests 
suite = TestSuite(name="Dynamic Suite") 
 
# Ajouter un test à la suite 
test = suite.tests.create(name="Test Dynamique") 

# Ajouter un mot-clé au test 
test.body.create_keyword("Log", args=["Bonjour, Robot Framework!"]) 

# Exécuter la suite de tests 
result = suite.run(output="output.xml") 