*** Settings ***
Library    RequestsLibrary
Library    DataDriver    auth_data_1.csv
Test Template    Tester Authentification


*** Test Cases ***
Tester Authentification ${nom} ${email} ${password}    NOM      EMAIL    PASSWORD


*** Keywords ***
Tester Authentification
    [Arguments]   ${nom}     ${email}    ${password}
    Create Session    API_Session    https://api.example.com
    ${response}=    POST On Session  API_Session    /auth    data={"nom": ${nom}, "email": "${email}", "password": "${password}"}
    Should Be Equal As Strings    ${response.status_code}    200
    Log    Authentification réussie pour ${email}
