*** Settings ***
Library     SeleniumLibrary
Library     LaptopActionsLibrary.py
Library     RequestsLibrary

*** Test cases ***
testcase
    Open Browser        https://google.com        chrome        options=add_argument("--disable-search-engine-choice-screen")
    Maximize Browser Window
    sleep   1s
    LaptopActionsLibrary.Press Key      tab
    LaptopActionsLibrary.Press Key      tab
    LaptopActionsLibrary.Press Key      tab
    LaptopActionsLibrary.Press Key      enter
    sleep    2s
    LaptopActionsLibrary.Press Key      tab
    LaptopActionsLibrary.Press Key      tab
    LaptopActionsLibrary.Press Key      tab
    LaptopActionsLibrary.Press Key      tab
    LaptopActionsLibrary.Press Key      tab
    LaptopActionsLibrary.Press Key      tab
    LaptopActionsLibrary.Press Key      tab
    LaptopActionsLibrary.Type Text        j'effectue une recherche
    LaptopActionsLibrary.Press Key      enter
    Sleep     3s
    LaptopActionsLibrary.Press Key     down
    LaptopActionsLibrary.Press Key     down
    LaptopActionsLibrary.Press Key     down
    LaptopActionsLibrary.Press Key     down
    LaptopActionsLibrary.Press Key     down
    LaptopActionsLibrary.Press Key     down
    LaptopActionsLibrary.Press Key     down
    LaptopActionsLibrary.Press Key     down
    LaptopActionsLibrary.Press Key     down
    LaptopActionsLibrary.Press Key     down
    LaptopActionsLibrary.Press Key     down
    LaptopActionsLibrary.Press Key     down
    LaptopActionsLibrary.Press Key     up
    LaptopActionsLibrary.Press Key     up
    LaptopActionsLibrary.Press Key     up
    LaptopActionsLibrary.Press Key     up
    LaptopActionsLibrary.Press Key     up
    LaptopActionsLibrary.Press Key     up
    LaptopActionsLibrary.Press Key     up
    LaptopActionsLibrary.Press Key     up
    LaptopActionsLibrary.Press Key     up
    LaptopActionsLibrary.Press Key     up
    LaptopActionsLibrary.Press Key     up
    LaptopActionsLibrary.Press Key     up
    LaptopActionsLibrary.Press Key     up
    LaptopActionsLibrary.Press Key     up
    LaptopActionsLibrary.Press Key     up
    Wait Until Page Contains      Gogle