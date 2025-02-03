from robot import run 

# Exécuter un fichier de test et récupérer le code de retour 
return_code = run('test.robot', output='output.xml') 

# Analyser le résultat 
if return_code == 0: 
    print("Tous les tests ont réussi.") 
else: 
    print(f"{return_code} échecs détectés.") 