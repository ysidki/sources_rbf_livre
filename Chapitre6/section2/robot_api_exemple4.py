from robot.api import TestSuiteBuilder, ResultWriter 

# Charger une suite de tests 
suite = TestSuiteBuilder().build("test.robot") 

# Exécuter la suite et générer un fichier de sortie 
result = suite.run(output="output.xml") 

# Utiliser ResultWriter pour générer la documentation à partir du fichier de sortie 
ResultWriter("output.xml").write_results(log="documentation_log.html", report="documentation_report.html") 

print("Documentation générée avec succès.") 