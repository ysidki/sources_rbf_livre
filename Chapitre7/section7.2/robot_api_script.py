from robot.api import TestSuite

# Créer une suite de tests
suite = TestSuite(name="Dynamic Suite")

# Ajouter un test à la suite
test = suite.tests.create(name="Test Dynamique")

# Ajouter un mot-clé au test
test.body.create_keyword("Log", args=["Bonjour, Robot Framework!"])

# Exécuter la suite de tests
result = suite.run(output="output.xml")

from robot.api import ExecutionResult

# Charger le fichier de sortie
result = ExecutionResult("output.xml")

# Afficher les statistiques
print(f"Tests réussis : {result.statistics.total.passed}")
print(f"Tests échoués : {result.statistics.total.failed}")

from robot.api import TestSuiteBuilder

# Charger une suite de tests depuis un fichier
suite = TestSuiteBuilder().build("test.robot")

# Ajouter un test supplémentaire
suite.tests.create(name="Test Supplémentaire").body.create_keyword("Log", args=["Ceci est un test supplémentaire."])

# Exécuter la suite modifiée
result = suite.run(output="modified_output.xml")
print("Suite modifiée exécutée avec succès.")

from robot.api import TestSuiteBuilder, ResultWriter

# Charger une suite de tests
suite = TestSuiteBuilder().build("test.robot")

# Exécuter la suite et générer un fichier de sortie
result = suite.run(output="output.xml")

# Utiliser ResultWriter pour générer la documentation à partir du fichier de sortie
ResultWriter("output.xml").write_results(log="documentation_log.html", report="documentation_report.html")
print("Documentation générée avec succès.")


