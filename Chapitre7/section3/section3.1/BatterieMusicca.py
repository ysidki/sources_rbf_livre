import pyautogui
from ai import lire_prompt, generer_rythme, inserer_keywords  # Import des fonctions du module ai.py
import random
from robot.libraries.BuiltIn import BuiltIn

class BatterieMusicca:
    ROBOT_LISTENER_API_VERSION = 2

    def __init__(self):
        """
        Initialise le listener et prépare les paramètres nécessaires.
        """
        self.ROBOT_LIBRARY_LISTENER = self
        self.resource_file = "rythmes.resource"
        self.prompt_file = "prompt_inspiration.txt"

    # Mots-clés existants
    def cymbale_crash(self):
        pyautogui.press('y')

    def cymbale_ride(self):
        pyautogui.press('u')

    def hi_hat_ferme(self):
        pyautogui.press('r')

    def hi_hat_ouvert(self):
        pyautogui.press('e')

    def hi_hat_pied(self):
        pyautogui.press('c')

    def tom_aigu(self):
        pyautogui.press('g')

    def tom_grave(self):
        pyautogui.press('h')

    def tom_bas(self):
        pyautogui.press('j')

    def caisse_claire(self):
        pyautogui.press('s')

    def caisse_claire_baguettes(self):
        pyautogui.press('d')

    def grosse_caisse(self):
        pyautogui.press('z')

    def hi_hat_ouvert_et_grosse_caisse(self):
        pyautogui.press('z')

    def accepter_cookies(self):
        pyautogui.press('tab')
        pyautogui.press('tab')
        pyautogui.press('tab')
        pyautogui.press('enter')

    # Méthodes du listener
    def _start_suite(self, name, attributes):
        """
        Récupère les rythmes depuis le modèle AI avant l'exécution de la suite de tests.
        """
        print(f"Initialisation des rythmes pour la suite : {name}")
        try:
            # Lecture du prompt depuis le fichier
            prompt = lire_prompt(self.prompt_file)

            # Génération des rythmes
            rythme = generer_rythme(prompt)

            # Formatage du rythme pour un fichier .resource
            rythmes = [rythme]  # Ajout des rythmes générés dans une liste

            # Insertion des rythmes dans le fichier resource
            inserer_keywords(self.resource_file, rythmes)
            print(f"Rythmes générés et insérés dans {self.resource_file}")
        except Exception as e:
            print(f"Erreur lors de la génération des rythmes : {str(e)}")

    # Nouveau mot-clé
    def executer_rythme_aleatoire(self):
        """
        Sélectionne et exécute un mot-clé aléatoire depuis rythmes.resource.
        """
        print("Lecture des mots-clés depuis rythmes.resource")
        try:
            with open(self.resource_file, 'r', encoding='utf-8') as f:
                lines = f.readlines()
            
            # Extraire les mots-clés commençant par "Rythme_Generate_"
            keywords = [line.strip() for line in lines if line.strip().startswith("Rythme_Generated_by_AI_")]
            if not keywords:
                raise ValueError("Aucun mot-clé trouvé dans rythmes.resource")

            # Choisir un mot-clé aléatoire
            random_keyword = random.choice(keywords)
            print(f"Mot-clé sélectionné : {random_keyword}")

            # Exécuter le mot-clé
            BuiltIn().run_keyword(random_keyword)
        except Exception as e:
            print(f"Erreur lors de l'exécution du mot-clé aléatoire : {str(e)}")
