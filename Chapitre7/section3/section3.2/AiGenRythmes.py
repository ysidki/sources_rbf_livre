from ai import generer_rythme  # Import de la fonction de génération de rythme depuis ai.py

class AiGenRythmes:

    def generer_rythmes_technique(self):
        """
        Génère un rythme basé sur un prompt technique pré-défini et renvoie le rythme généré.
        """
        try:
            # Lecture du fichier de prompt technique
            with open("prompt_technique.txt", "r", encoding="utf-8") as file:
                prompt = file.read()
            
            # Appel de la fonction générer_rythme avec le prompt technique
            rythme = generer_rythme(prompt)
            return rythme.splitlines()
        except Exception as e:
            print(f"Erreur lors de la génération du rythme technique : {str(e)}")
            return None

    def generer_rythmes_inspiration(self):
        """
        Génère un rythme basé sur un prompt inspirant pré-défini et renvoie le rythme généré.
        """
        try:
            # Lecture du fichier de prompt inspirant
            with open("prompt_inspiration.txt", "r", encoding="utf-8") as file:
                prompt = file.read()

            # Appel de la fonction générer_rythme avec le prompt inspirant
            rythme = generer_rythme(prompt)
            return rythme.splitlines()
        except Exception as e:
            print(f"Erreur lors de la génération du rythme inspirant : {str(e)}")
            return None
