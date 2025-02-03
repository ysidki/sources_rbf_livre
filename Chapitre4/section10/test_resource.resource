*** Variables ***
${url}            https://google.com    # url de l'application testée
@{produits}       produit1    produit2    produit3
&{comptes}        user1=pwd1    user2=pwd2    user3=pwd3

*** Keywords ***
Effectuer une recherche valide sur le navigateur
    [Arguments]    ${navigateur}
    [Documentation]    Effectuer une recherche Google valide
    [Timeout]    5 minutes
    Open Browser    https://google.com    ${navigateur}
    Maximize Browser Window
    Debug
    Wait Until Page Contains Element    //button[@id="W0wltc"]
    Wait Until Page Contains Element    //button[@id="L2AGLb"]
    Click Element    //button[@id="W0wltc"]
    Wait Until Page Contains Element    //textarea[@id="APjFqb"]
    Input Text    //textarea[@id="APjFqb"]    Livres EDITIONS ENI
    Wait Until Page Contains Element    //input[@name="btnK"][1]
    Click Element    //input[@name="btnK"][1]
    Wait Until Page Contains    EDITIONS ENI
    Close Browser

afficher_contenu_scalaire
    [Arguments]    ${variable}
    Log    Contenu de la variable scalaire : ${variable}

afficher_contenu_liste
    [Arguments]    @{variable}
    Log    Contenu de la variable liste :
    FOR    ${item}    IN    @{variable}
        Log    ${item}
    END

afficher_contenu_dictionnaire
    [Arguments]    &{variable}
    Log    Contenu de la variable dictionnaire :
    FOR    ${key}    ${value}    IN    &{variable}
        Log    ${key}=${value}
    END
