*** Settings ***
Library       SeleniumLibrary

*** Test Cases ***
testcase
    [Tags]    tag
    Open Browser    http://www.google.com    chrome    
    Maximize Browser Window
    Close Browser
