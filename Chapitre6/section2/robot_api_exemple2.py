from robot.api import ExecutionResult 

# Charger le fichier de sortie 
result = ExecutionResult("output.xml") 

# Afficher les statistiques 
print(f"Tests réussis : {result.statistics.total.passed}") 
print(f"Tests échoués : {result.statistics.total.failed}") 