*** Settings ***
Library           SeleniumLibrary
Library           DataDriver    inscription_data.csv
Test Template     Tester Inscription

*** Test Cases ***
Tester Inscription ${nom} ${email} ${mot_de_passe}    NOM    EMAIL    MOT_DE_PASSE

*** Keywords ***
Tester Inscription
    [Arguments]    ${nom}    ${email}    ${mot_de_passe}
    Open Browser    http://example.com    chrome
    Input Text      id:username           ${nom}
    Input Text      id:email              ${email}
    Input Text      id:password           ${mot_de_passe}
    Click Button    id:submit
    Page Should Contain    Inscription réussie
    Close Browser
