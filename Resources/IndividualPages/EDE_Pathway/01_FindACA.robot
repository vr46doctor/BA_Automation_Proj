*** Settings ***
Library  Selenium2Library
Library  Collections
Library  ExtendedSelenium2Library
Library  BuiltIn
Test Timeout  7s

*** Variables ***
#################### 01_FindACA ####################
${FindACA Form}                         //form[@id='findACAApplicationForm']
${FirstName}                            //input[@id='FirstName']
${LastName}                             //input[@id='LastName']
${DOB}                                  //input[@id='DateOfBirth']
${Enrolling State}                      (//form[@id='findACAApplicationForm']//*[contains(@class,'dropdown')])[1]
${Agent Attestation}                    (//span[contains(@class,'textcontent')])[1]
${Customer Search}                      //a[@id='Id_SearchbyName']
${Create New Application}               (//a[contains(.,'Create New Application')])[2]
${New Application Coverage Year}        (//div[@id='CreateApplicationmodal1']//input[contains(@class,'select-dropdown')])[1]
${New Application Coverage State}       (//div[@id='CreateApplicationmodal1']//input[contains(@class,'select-dropdown')])[2]
${Confirm New Application Creation}     //a[@href='#!'][contains(.,'Create')]
${Cancel New Application Creation}      (//a[@href='#!'][contains(.,'Cancel')])[2]

*** Keywords ***
Search Customer record in CMS via Find ACA Application
    Press Keys      ${FirstName}	${Input_Customer FirstName}
    Press Keys      ${LastName}     ${Input_Customer LastName}
    Press Keys      ${DOB}     ${Input_Customer DOB}
    Click Element   ${Enrolling State}
    Click Element   (//span[contains(text(),'${Input_Enrolling State}')])[1]
    Click Element   ${Agent Attestation}
    Click Element   ${Customer Search}

Create a New Application for the Customer
    Wait Until Element Is Visible       ${Create New Application}
    Click Element   ${Create New Application}
    Click Element   ${New Application Coverage Year}
    Click Element   //span[text()='${Input_Coverage Year}']
    Click Element   ${New Application Coverage State}
    Click Element   (//span[contains(text(),'${Input_Enrolling State}')])[2]
    Click Element   ${Confirm New Application Creation}