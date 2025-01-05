*** Settings ***
Library    FlaUILibrary

*** Variables ***
${NOTEPAD_PATH}    C:\\Windows\\System32\\notepad.exe
${TEXT_TO_TYPE}    Robot Framework Test
${SAVE_PATH}       C:\\temp\\test_notepad.txt

#locators
${menu_file}     /Window/Pane[3]/MenuBar/MenuItem[1]
${textbox}      /Window[2]/Pane[1]/Document
${save_field}     /Window[2]/Window/Pane[1]/ComboBox[1]/Edit


*** Test Cases ***
Test Notepad Application
    ${pid}=    Launch Application    ${NOTEPAD_PATH}
    Wait Until Element Exist      identifier=${menu_file}
    Click      ${menu_file}
    Sleep      500ms
    Press Key     s'DOWN'        None
    Sleep      500ms
    Press Key     s'UP'        None
    Sleep      500ms
    Press Key     s'ENTER'        None
    Wait Until Element Exist      identifier=${textbox}
    Set Text To Textbox       identifier=${textbox}     value=${TEXT_TO_TYPE}
    Press Key     s'CTRL+S'        None
    Wait Until Element Exist      identifier=${save_field}
    Set Text To Textbox     identifier=${save_field}     value=${SAVE_PATH}
    Press Key     s'ENTER'       None
    Close Application    ${pid}
 
