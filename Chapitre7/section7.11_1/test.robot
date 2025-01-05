*** Settings ***
Library    C:/Users/Admin/Projects/rbf_book/Sources/tests/section7.11/my_simple_library.py
Library    MyLibrary.py
Library    MyDynamicLibrary.py
Library    ExtendedSeleniumLibrary.py

*** Test Cases ***
Test Simple Library
    ${message}=    my_simple_library.Hello User   John
    Log    ${message} 

Test Class Library
    ${message}=    MyLibrary.Hello User  John
    Log    ${message}


Test Dynamic Library
    Dynamic Keyword One
    Dynamic Keyword Two    Argument

Test Extended Library
    Open Browser    http://google.com    chrome
    Click And Log    css:button.submit
    Close Browser