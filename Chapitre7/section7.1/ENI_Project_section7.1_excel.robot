*** Settings ***
Library           DataDriver      C:\Users\Admin\Projects\rbf_book\Sources\tests\section7.1\test.xlsx
Test Template     Verify Login

*** Test Cases ***
Test Case    ${Username}        test        test

*** Keywords ***
Verify Login
    [Arguments]    ${Username}    ${Password}    ${Role}
    Log            Username: ${Username}
    Log            Password: ${Password}
    Log            Role: ${Role}

