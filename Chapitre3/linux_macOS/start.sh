#!/bin/bash

# Supprime le dossier .eni et son contenu
rm -rf .eni

# Crée un environnement virtuel Python dans le dossier .eni
python3 -m venv .eni

# Active l'environnement virtuel
source .eni/bin/activate

# Installe les dépendances listées dans requirements.txt
pip install -r requirements.txt

# Exécute un test avec Robot Framework
robot ../test.robot
