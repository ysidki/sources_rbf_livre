*** Settings ***
Library           SeleniumLibrary
Library           ../section7.11/my_class_library.py

*** Test Cases ***
testcase
    [Tags]    tag
    Open Browser    http://www.google.com    chrome
    Maximize Browser Window
    Close Browser
