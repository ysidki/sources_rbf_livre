from robot.result import ExecutionResult

# Charger un fichier de résultat existant
result = ExecutionResult('output.xml')

# Parcourir les résultats
for test in result.suite.tests:
    print(f"Test: {test.name}, Statut: {test.status}")


from robot.result import ExecutionResult

# Charger un fichier de résultat existant
result = ExecutionResult('output.xml')

# Parcourir les tests et les mots-clés
for test in result.suite.tests:
    print(f"Test: {test.name}, Statut: {test.status}")
    print("Mots-clés exécutés :")
    for item in test.body:
        if item.type == "KEYWORD":
            print(f"  - Mot-clé : {item.name}")
            print(f"    Arguments : {item.args}")
            print(f"    Statut : {item.status}")
        print()