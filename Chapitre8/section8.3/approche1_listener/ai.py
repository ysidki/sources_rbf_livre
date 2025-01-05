import openai

# Configuration de la clé API OpenAI
openai.api_key = "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"

def lire_prompt(fichier):
    """
    Lit le contenu d'un fichier texte contenant un prompt.
    """
    with open(fichier, 'r', encoding='utf-8') as f:
        return f.read()

def generer_rythme(prompt):
    """
    Interroge l'IA avec un prompt et retourne le rythme généré.
    """
    response = openai.chat.completions.create(
        model="gpt-4",
        messages=[
            {"role": "system", "content": "Tu es un assistant musical spécialisé en batterie."},
            {"role": "user", "content": prompt},
        ]
    )
    return response.choices[0].message.content

def inserer_keywords(fichier_resource, rythmes):
    """
    Insère les rythmes obtenus dans la section Keywords d'un fichier .resource.
    - La section *** Keywords *** est ajoutée uniquement si elle n'existe pas.
    - Les titres des mots-clés suivent le format Rythme_Generate_X en continuant
      la numérotation basée sur les mots-clés déjà présents.
    """
    # Lire le contenu existant du fichier
    with open(fichier_resource, 'r', encoding='utf-8') as f:
        contenu = f.readlines()
    
    # Vérifier si la section *** Keywords *** existe
    section_keywords_presente = any("*** Keywords ***" in ligne for ligne in contenu)

    # Trouver le dernier numéro de mot-clé existant
    dernier_numero = 0
    if section_keywords_presente:
        for ligne in contenu:
            if ligne.strip().startswith("Rythme_Generated_by_AI_"):
                try:
                    numero = int(ligne.strip().split("_")[-1])
                    dernier_numero = max(dernier_numero, numero)
                except ValueError:
                    continue

    # Ouvrir le fichier en mode ajout
    with open(fichier_resource, 'a', encoding='utf-8') as f:
        if not section_keywords_presente:
            f.write("\n*** Keywords ***\n")
        
        # Ajouter les nouveaux rythmes avec la numérotation continue
        for index, rythme in enumerate(rythmes, start=1):
            nouveau_numero = dernier_numero + index
            f.write(f"\nRythme_Generated_by_AI_{nouveau_numero}\n")
            for ligne in rythme.splitlines():
                if ligne.strip():  # Ignore les lignes vides
                    f.write(f"    {ligne.strip()}\n")
