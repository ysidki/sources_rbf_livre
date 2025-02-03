*** Settings ***
Library    DataDriver    jdd.csv
Test Template    Effectuer Virement


*** Test Cases ***
Effectuer Virement ${compte_source} ${compte_cible} ${montant}    COMPTE_SOURCE    COMPTE_CIBLE    MONTANT


*** Keywords ***

Effectuer Virement
    [Arguments]    ${compte_source}    ${compte_cible}    ${montant}
    Log    ${compte_source}
    Log    ${compte_cible}
    Log    ${montant}