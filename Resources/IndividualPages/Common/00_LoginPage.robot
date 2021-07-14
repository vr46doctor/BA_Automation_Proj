*** Settings ***
Library  SeleniumLibrary
Library  Collections
#Library  ExtendedSelenium2Library
Library  BuiltIn

*** Variables ***
######################################## Main Xpath ########################################
${Username}     id:Item2_UserName
${Password}     id:Item2_Password

*** Keywords ***
Start Test Execution
    Open Browser    ${Test_URL}  ${BROWSER}
    Maximize Browser Window
    Set Browser Implicit Wait       5s

Perform Userlogin
    Input Text	    ${Username}	    ${Login_Username}
    Input Text	    ${Password}	    ${Login_Password}
    Click Element	SignIn
#    Set Selenium Implicit Wait      5s

Finish Test Execution
    Close Browser