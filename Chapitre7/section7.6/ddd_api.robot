*** Settings ***
Library           RequestsLibrary
Library           DataDriver    auth_data.csv
Test Template     Tester Authentification

*** Test Cases ***
Tester Authentification ${email} ${password}    EMAIL    PASSWORD

*** Keywords ***
Tester Authentification
    [Arguments]    ${email}    ${password}
    Create Session    API_Session    https://api.example.com
    ${response}=      POST   API_Session   /auth   data={"email": "${email}", "password": "${password}"}
    Should Be Equal As Strings    ${response.status_code}    200
    Log    Authentification réussie pour ${email}