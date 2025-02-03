from robot.result import ExecutionResult 

# Charger un fichier de résultat existant 
result = ExecutionResult('output.xml') 

# Parcourir les résultats 
for test in result.suite.tests: 
    print(f"Test: {test.name}, Statut: {test.status}") 