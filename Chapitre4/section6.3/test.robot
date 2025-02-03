*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
accès à Google
    [Documentation]    Vérifier que l’application Google est accessible et ne présente aucune erreur spécifique.
    [Timeout]    5 minutes
    Open Browser    https://google.com    chrome
    Wait Until Page Contains    Google
