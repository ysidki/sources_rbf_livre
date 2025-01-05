*** Settings ***
Library           SeleniumLibrary
Variables         simple.yaml
Variables         list.yaml      
Variables         nested.yaml    

*** Test Cases ***
access simple yaml
    Log          ${username}
    Log          ${password}
    Log          ${timeout}

access list yaml
    Log       ${users}[0]
    Log       ${users}[1]
    Log       ${users}[2]

Parcourir la Liste yaml Avec Une Boucle FOR
    FOR    ${user}    IN    @{users}
        Log    ${user}
    END

access nested yaml
    Log    ${environment.dev.url}        
    Log    ${environment.prod.timeout}   
    Log    ${users[0].username}          
    Log    ${users[1].password}          