#Exemple 1
from robot.running.model import TestSuite

# Créer une suite de tests
suite = TestSuite(name="Dynamic Test Suite")

# Ajouter un cas de test à la suite
test = suite.tests.create(name="Test Dynamique")
test.body.create_keyword(name="Log", args=["Message depuis le test dynamique"])
test.body.create_keyword(name="Je suis un mot clé")

# Afficher les mots-clés de la suite
for test in suite.tests:
    for item in test.body:
        if item.type == "KEYWORD":  # Ensure we're processing keywords
            print(f"Mot-clé : {item.name}, Arguments : {item.args}")


#Exemple 2
from robot.running.model import TestSuite
from robot.api.deco import keyword
from robot.libraries.BuiltIn import BuiltIn

# Créer une suite de tests dynamique
suite = TestSuite(name="Advanced Dynamic Test Suite")

# Pré-définir la variable dans la suite
test = suite.tests.create(name="Test Conditionnel")
test.body.create_var(name="${VAR}", value="42")  # Pré-définir la variable

# Ajouter un mot-clé conditionnel
test.body.create_keyword(
    name="Run Keyword If",
    args=["${VAR} == 42", "Log", "La variable est égale à 42!"]
)

# Ajouter un mot-clé de validation
test.body.create_keyword(name="Should Be Equal", args=["${VAR}", "42"])

# Afficher les mots-clés ajoutés
print("Mots-clés ajoutés au test :")
for item in test.body:
    if item.type == "KEYWORD":  # Filtrer uniquement les mots-clés
        print(f"Nom du mot-clé : {item.name}, Arguments : {item.args}")

# Exécuter la suite de tests
result = suite.run(output="advanced_output.xml")
print(f"Résultat de l'exécution : {result.return_code}")


