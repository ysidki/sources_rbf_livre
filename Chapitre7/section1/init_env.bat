REM Création de l'environnement virtuel 
python -m venv .env 

REM Activation de l'environnement virtuel 
call .env\Scripts\activate.bat 

REM Installation des dépendances 
call pip install -r requirements.txt 


echo Environnement configuré avec succès ! 