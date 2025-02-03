*** Settings *** 

Library    my_simple_library.py
Library    MyLibrary.py
Library    ExtendedSeleniumLibrary.py

*** Test Cases *** 

Test Simple Library 

    ${message}=    my_simple_library.Hello User    John 

    Log    ${message}

Test Simple Library 

    ${message}=    MyLibrary.Hello User    John 

    Log    ${message}

Test Extended Library 
    Open Browser    http://example.com    chrome 
    Click And Log    css:button.submit 
    Close Browser 
    