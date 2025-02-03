*** Settings ***
Library           RequestsLibrary
Library           JSONLibrary
Test Teardown     Delete All Sessions

*** Variables ***
${API_URL}          https://jsonplaceholder.typicode.com
${USERS_ENDPOINT}   /users
${NEW_USER}         {"name": "Bahout Derba", "username": "bderba", "email": "bahourderba@example.com"}
${HEADERS}          {"Content-Type": "application/json"}

*** Test Cases ***
Create User
    Create Session    JSONPlaceholder    ${API_URL}    headers=${HEADERS}
    ${response}=      POST On Session    JSONPlaceholder    ${USERS_ENDPOINT}    data=${NEW_USER}
    Should Be Equal As Numbers    ${response.status_code}    201
    ${created_user}=   Convert String To Json    ${response.content}
    Should Contain     ${created_user}           id
    Should Be Equal    ${created_user['name']}        Bahout Derba
    Should Be Equal    ${created_user['username']}    bderba
    Should Be Equal    ${created_user['email']}       bahourderba@example.com
