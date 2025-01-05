*** Settings ***
Library           OperatingSystem
Test Template     Effectuer Virement
Resource          actions.robot

*** Test Cases ***
# Nom des cas et données injectées
Virement Particulier à Pro      particulier    pro       1000
Virement Livret A à Pro         livret_a       pro       500
Virement Courant à Livret A     courant        livret_a  200
Virement Pro à Épargne          pro            epargne   3000

*** Keywords ***
Effectuer Virement
    [Arguments]    ${compte_source}    ${compte_cible}    ${montant}
    Vérifier Compte Source    ${compte_source}
    Vérifier Compte Cible     ${compte_cible}
    Simuler Virement          ${compte_source}    ${compte_cible}    ${montant}
    Vérifier Résultat         ${compte_source}    ${compte_cible}    ${montant}
