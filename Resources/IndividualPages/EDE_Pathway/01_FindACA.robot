*** Settings ***
Library  Selenium2Library
Library  Collections
Library  ExtendedSelenium2Library
Library  BuiltIn

*** Variables ***
######################################## Main Xpath ########################################
${FindACA_FirstName}                            //input[@id='FirstName']
${FindACA_LastName}                             //input[@id='LastName']
${FindACA_DOB}                                  //input[@id='DateOfBirth']
${FindACA_Enrollment State}                     (//form[@id='findACAApplicationForm']//*[contains(@class,'dropdown')])[1]
${FindACA_Agent Attestation}                    (//span[contains(@class,'textcontent')])[1]
${FindACA_Customer Search}                      //a[@id='Id_SearchbyName']
${FindACA_Create New Application}               (//a[contains(.,'Create New Application')])[2]
${FindACA_New Application Coverage Year}        (//div[@id='CreateApplicationmodal1']//input[contains(@class,'select-dropdown')])[1]
${FindACA_New Application Coverage State}       (//div[@id='CreateApplicationmodal1']//input[contains(@class,'select-dropdown')])[2]
${FindACA_Confirm New Application Creation}     //a[@href='#!'][contains(.,'Create')]
${FindACA_Cancel New Application Creation}      (//a[@href='#!'][contains(.,'Cancel')])[2]

######################################## Redundant Xpath ########################################
${FindACA Form}                         //form[@id='findACAApplicationForm']

*** Keywords ***
Search Customer record in CMS via Find ACA Application
    Press Keys              ${FindACA_FirstName}	${Input_Customer FirstName}
    Press Keys              ${FindACA_LastName}     ${Input_Customer LastName}
    Press Keys              ${FindACA_DOB}          ${Input_Customer DOB}
    Click Element           ${FindACA_Enrollment State}
    Click Element           (//span[contains(text(),'${Input_Enrolling State}')])[1]
    Click Element           ${FindACA_Agent Attestation}
    Click Element           ${FindACA_Customer Search}

Create a New Application for the Customer
    Set Selenium Implicit Wait      5s
    Wait Until Element Is Visible       ${FindACA_Create New Application}
    Click Element           ${FindACA_Create New Application}
    Click Element           ${FindACA_New Application Coverage Year}
    Click Element           //span[text()='${Input_Coverage Year}']
    Click Element           ${FindACA_New Application Coverage State}
    Click Element           (//span[contains(text(),'${Input_Enrolling State}')])[2]
    Click Element           ${FindACA_Confirm New Application Creation}