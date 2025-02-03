*** Settings ***
Library   SeleniumLibrary
Test Teardown    Close Browser

*** Test Cases ***
testcase1
    Open Browser     https://google.Com       chrome
    Maximize Browser Window
    Wait Until Page Contains        Google

testcase2
    Open Browser     https://google.Com       chrome
    Maximize Browser Window
    Wait Until Page Contains        Gogle

testcase3
    Open Browser     https://github.Com       chrome
    Maximize Browser Window
    Wait Until Page Contains        Sign in

testcase4
    Open Browser     https://google.Com       chrome
    Maximize Browser Window
    Wait Until Page Contains        Sgn in