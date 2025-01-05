*** Settings ***
Library           OperatingSystem
Library           DataDriver     jdd.csv
Test Template     Effectuer Virement
Resource          actions.robot

*** Test Cases ***        
Effectuer Virement ${compte_source} ${compte_cible} ${montant}    COMPTE_SOURCE    COMPTE_CIBLE    MONTANT

*** Keywords ***
Effectuer Virement
    [Arguments]    ${compte_source}    ${compte_cible}    ${montant}
    Vérifier Compte Source    ${compte_source}
    Vérifier Compte Cible     ${compte_cible}
    Simuler Virement          ${compte_source}    ${compte_cible}    ${montant}
    Vérifier Résultat         ${compte_source}    ${compte_cible}    ${montant}
