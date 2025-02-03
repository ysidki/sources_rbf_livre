*** Settings ***
Library           SeleniumLibrary
Library           DebugLibrary

*** Test Cases ***
effectuer une recherche valide
    Open Browser    https://google.com    chrome
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
    

