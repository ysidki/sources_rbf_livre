*** Settings *** 
Library           SeleniumLibrary 
Library           DebugLibrary 
 

*** Variables *** 
${xpath_tout_refuser}    //button[@id="W0wltc"] 

 
*** Test Cases *** 
effectuer une recherche valide 
    Open Browser    https://google.com    chrome 
    Maximize Browser Window 
    ${nb_occurrences}=     Get Element Count     ${xpath_tout_refuser} 
    Debug If   ${nb_occurrences}==0 