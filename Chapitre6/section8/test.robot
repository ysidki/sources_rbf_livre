*** Settings ***
Library   SeleniumLibrary

*** Test Cases ***
testcase_passed
    Open Browser     https://google.Com       chrome
    Wait Until Page Contains        Google

testcase_failed
    Open Browser     https://google.Com       chrome
    Wait Until Page Contains        Gogle