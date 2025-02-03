from robot.api import TestSuiteBuilder 

# Charger une suite de tests depuis un fichier 
suite = TestSuiteBuilder().build("test.robot") 

# Ajouter un test supplémentaire 
test_case = suite.tests.create(name="Test Supplémentaire")

test_case.body.create_keyword("Log", args=["Ceci est un test supplémentaire."]) 

# Exécuter la suite modifiée 
result = suite.run(output="modified_output.xml") 
print("Suite modifiée exécutée avec succès.") 