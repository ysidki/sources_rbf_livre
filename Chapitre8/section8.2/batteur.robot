*** Settings ***
Library          BatterieMusicca.py
Library          SeleniumLibrary
Resource        rythmes.resource


*** Test Cases ***
Jouer
    Acceder a Musicca Batterie
    Accepter Cookies
    FOR    ${i}    IN RANGE    10
        Rythme1
    END
    Close Browser
