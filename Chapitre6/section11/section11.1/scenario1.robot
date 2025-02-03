*** Settings *** 
Library           SeleniumLibrary 
Test Template     do a search 
Test Teardown     Close Browser 

 
*** Variables *** 
#locators 
${button_accept_cookies}    //*[@id="L2AGLb"] 
${search_field}             //*[@id="APjFqb"] 

 
#data 
${Valid_search}            robot framework 
${Empty_search}            ""   
${Special_char_search}     !@#$%^&*() 
${Long_search}             This is a very long search term that exceeds the typical character limit for a search field. 
${Whitespace_search}       "    " 
${Numeric_search}          987654321 
${Search_with_spaces}      open ai 

 
*** Test Cases *** 
do a valid search     ${Valid_search} 
do an empty search    ${Empty_search} 
do a search with special characters  ${Special_char_search} 
do a search with a long search term  ${Long_search} 
do a search with whitespace  ${Whitespace_search} 
do a search with numbers  ${Numeric_search} 
do a search with spaces  ${Search_with_spaces} 

 
*** Keywords *** 
do a search 
    [Arguments]    ${search_input}  
    Open Browser    https://www.google.com    chrome 
    Maximize Browser Window 
    # accepter les cookies 
    Wait Until Page Contains Element     ${button_accept_cookies} 
    Click Element     ${button_accept_cookies} 
    Wait Until Page Contains Element        ${search_field} 
    Input Text    ${search_field}    ${search_input} 
    Sleep   5s
    Press Keys    ${search_field}    RETURN 
    Wait Until Page Contains     ${search_input} 