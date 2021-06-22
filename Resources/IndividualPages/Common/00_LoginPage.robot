*** Settings ***
Library  Selenium2Library
Library  Collections
Library  ExtendedSelenium2Library
Library  BuiltIn
Test Timeout  7s

*** Variables ***
${Username}     id:Item2_UserName
${Password}     id:Item2_Password

*** Keywords ***
[Timeout]  Set Selenium Timeout  7s

Start TestCase Execution
    Open Browser    ${Test_URL}  ${BROWSER}
    Maximize Browser Window

Perform Userlogin
    Input Text	    ${Username}	    ${Login_Username}
    Input Text	    ${Password}	    ${Login_Password}
    Click Element	SignIn

Finish TestCase Execution
    Close Browser