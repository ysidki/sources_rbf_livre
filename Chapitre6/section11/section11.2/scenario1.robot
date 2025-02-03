*** Settings ***
Library           RequestsLibrary
Library           JSONLibrary

*** Variables ***
${API_URL}          https://jsonplaceholder.typicode.com
${USERS_ENDPOINT}   /users

*** Test Cases ***
Get Users List
    Create Session    JSONPlaceholder    ${API_URL}
    ${response}=      GET On Session     JSONPlaceholder    ${USERS_ENDPOINT}
    Should Be Equal As Numbers    ${response.status_code}    200
    ${users}=         JSONLibrary.Convert String To Json    ${response.content}
    Log               ${users}
    Should Not Be Empty    ${users}
    FOR    ${user}    IN    @{users}
        Should Not Be Empty    ${user['name']}
        Should Not Be Empty    ${user['email']}
    END
