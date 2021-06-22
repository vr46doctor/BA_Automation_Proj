*** Settings ***
Library  Selenium2Library

*** Variables ***
${BROWSER}                      chrome
${URL}                          https://shop-qa.benefitalign.com/brokerengage/benefitalign/home/login
${LoginUsername}                edeagency1
${LoginPassword}                Test1234
${Access Marketplace}           //a[@href='/brokerengage/benefitalign/broker/findacaapplication']
${FirstName}                    //input[@id='FirstName']
${LastName}                     //input[@id='LastName']
${DOB}                          //input[@id='DateOfBirth']
${CustomerFname}                GeorgeQA
${CustomerLname}                JuneEleven
${CustomerDOB}                  01/01/1983
${State}                        Florida
${AgentAttestation}             //span[contains(@class,'textcontent')]      #//input[@name="IAgree"]
${CustomerSearch}               //a[@id='Id_SearchbyName']
${CreateNewApplication}         //a[@href='#CreateApplicationmodal1']


*** Test Cases ***
Login
    Open Browser    ${URL}  ${BROWSER}
    Maximize Browser Window
    Input Text	id:Item2_UserName	${LoginUsername}
    Input Text	id:Item2_Password	${LoginPassword}
    Click Element	SignIn
    Sleep   2s
Quoteless Flow
    Click Element    ${Access Marketplace}
Search Customer Record
#    Click Element   ${FirstName}
#    Input Text      ${FirstName}	${CustomerFname}
    Press Keys      ${FirstName}	${CustomerFname}
#    Click Element   ${LastName}
#    Input Text      ${LastName}     ${CustomerLname}
    Press Keys      ${LastName}     ${CustomerLname}
#    Click Element   ${DOB}
#    Press Keys      ${DOB}     ${CustomerDOB}
    Press Keys      ${DOB}     ${CustomerDOB}
    Click Element   //*[@id='test-swipe-1']//*[contains(@class,'dropdown')]
    Sleep   1s
    Click Element   //span[contains(.,'${State}')]
    Sleep   2s
    Click Element   ${AgentAttestation}
    Click Element   ${CustomerSearch}
    Sleep   3s
New Application Creation
    Click Element   ${CreateNewApplication}
    Sleep   1s
    Click Element   (//div[@id='CreateApplicationmodal1']//input[contains(@class,'select-dropdown')])[1]
    Click Element   //span[text()='2021']
    Sleep   2s
    Click Element   (//div[@id='CreateApplicationmodal1']//input[contains(@class,'select-dropdown')])[2]
    Click Element   (//span[contains(.,'${State}')])[2]
    Sleep   2s
#    Click Element   //a[@href='#!'][contains(.,'Create')]


#################



