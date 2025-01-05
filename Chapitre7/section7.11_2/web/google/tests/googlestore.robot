*** Settings ***
Library           SeleniumLibrary
Test Teardown     Close Browser

*** Variables ***
# Locators
${button_accept_cookies}    //*[@id="L2AGLb"]
${search_field}             //*[@id="APjFqb"]
${google_store_button}      //*[contains(text(),'Google Store')]
${header_search}       //*[@data-test="header-search"]
${search_field_store}     //input[@type="text"]
${product_found}            class=kFKdbe
${button_buy}           //*[@data-test="cta"]
${select_config}        class=YDyTEc
${select_color}         class=O70Bdc
${select_storage}       //*[@data-test="storage_selection_panel"]
${skip_estimation}    //*[@data-tracking-label="Passer"]
${add_to_cart_button}    class=Tr75Ib
${access_cart}           class=Tfrtmd

# Data
${Product_name}            Pixel 9

*** Test Cases ***
add item to cart    
    Open Browser    https://google.com    chrome
    Maximize Browser Window
    # Accepter les cookies
    click after wait     ${button_accept_cookies}
    click after wait    ${google_store_button}
    click after wait    ${header_search}
    Wait Until Page Contains Element    ${search_field_store}
    Input Text    ${search_field_store}     ${Product_name}
    Press Keys   ${search_field_store}    RETURN
    Wait Until Page Does Not Contain        Aucun résultat
    click after wait     ${product_found}
    click after wait     ${button_buy}
    
    click after wait     ${select_color}
    click after wait     ${select_storage}
    click after wait     ${skip_estimation}
    
    click after wait     ${add_to_cart_button}
    click after wait     ${access_cart}
    Wait Until Page Contains     1

*** Keywords ***
click after wait
    [Arguments]    ${locator}      
    Wait Until Page Contains Element    ${locator}    
    Click Element    ${locator}
    
    
    
