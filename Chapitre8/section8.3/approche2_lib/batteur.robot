*** Settings ***
Library          BatterieMusicca.py
Library          SeleniumLibrary
Library          AiGenRythmes.py
Resource        rythmes.resource


*** Test Cases ***
Jouer
    @{rythme}=     Generer Rythmes Inspiration
    Acceder a Musicca Batterie
    Accepter Cookies
    FOR    ${i}    IN RANGE    1
        Executer rythme    @{rythme}
    END
    [Teardown]   Close Browser

*** Keywords ***
Executer rythme
    [Arguments]   @{rythme}
    FOR    ${note}    IN    @{rythme}
        Run Keyword    ${note}
    END            
