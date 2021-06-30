*** Settings ***
Library  Selenium2Library
Library  Collections
Library  ExtendedSelenium2Library
Library  BuiltIn
Test Timeout  7s

*** Variables ***
######################################## Main Xpath ########################################
${PCP_Customer FirstName}               //form[@id='PrimaryContactForm']//input[contains(@id,'YourInformation_FirstName')]
${PCP_Customer MiddleName}              //form[@id='PrimaryContactForm']//input[contains(@id,'YourInformation_MiddleName')]
${PCP_Customer LastName}                //form[@id='PrimaryContactForm']//input[contains(@id,'YourInformation_LastName')]
${PCP_Customer Suffix}                  (//form[@id='PrimaryContactForm']//input[contains(@class,'dropdown')])[1]
${PCP_Customer Gender}                  (//form[@id='PrimaryContactForm']//input[contains(@class,'dropdown')])[2]
${PCP_Customer DOB}                     //form[@id='PrimaryContactForm']//input[contains(@id,'YourInformation_DateOfBirth')]
${PCP_Customer Tobacco Usage}           (//form[@id='PrimaryContactForm']//input[contains(@class,'dropdown')])[3]
${PCP_Customer Email}                   //input[@id='Email']
${PCP_Customer Phone}       			//input[contains(@id,'PhoneNumberOne')]
${PCP_Customer PhoneType}       		(//form[@id='PrimaryContactForm']//input[contains(@class,'dropdown')])[4]
${PCP_Customer Written Language}        (//form[@id='PrimaryContactForm']//input[contains(@class,'dropdown')])[7]
${PCP_Customer Spoken Language}     	(//form[@id='PrimaryContactForm']//input[contains(@class,'dropdown')])[8]
${PCP_Customer Home Address}            //input[contains(@id,'Address_HomeAddress_AddressLine1')]
${PCP_Customer Home Address Zipcode}    //input[contains(@id,'Address_HomeAddress_Zip')]
${PCP_Customer Home Address County}     //input[contains(@id,'Address_HomeAddress_County')]
${PCP_Customer Home Address City}       (//form[@id='PrimaryContactForm']//input[contains(@class,'dropdown')])[9]
${PCP_Next Button}                      //a[contains(@id,'PrimaryContactNext')]
${PCP_Cancel Button}                    (//a[contains(.,'Cancel')])[3]

######################################## Redundant Xpath ########################################
#${PCP_Customer Comm-Paperless}          //span[contains(.,'Go Paperless')]
#${PCP_Customer Comm-Paper Mail}         //span[contains(.,'Send me paper notices in the mail')]


*** Keywords ***
Verify that Customer Information provided in Find ACA page is populated in PC Page
    Page Should Contain             Your Information
    Textfield Value Should Be       ${PCP_Customer FirstName}   ${Input_Customer FirstName}
    Textfield Value Should Be       ${PCP_Customer LastName}    ${Input_Customer LastName}
    Textfield Value Should Be       ${PCP_Customer DOB}         ${Input_Customer DOB}
#    Sleep   2s

Enter Primary Contact details
    Click Element           ${PCP_Customer Gender}
    Click Element           (//span[contains(.,'${Input_Customer Gender}')])

    Press Keys              ${PCP_Customer Email}       ${Input_Customer Email}
    Press Keys              ${PCP_Customer Phone}       ${Input_Customer Phone}
    Click Element           ${PCP_Customer PhoneType}
    Click Element           (//span[contains(.,'${Input_Customer PhoneType}')])[1]

    Click Element           //span[contains(.,'${Input_Communication Mode}')]

    Click Element           ${PCP_Customer Written Language}
    Click Element           (//span[contains(.,'${Input_Customer Written Language}')])[1]

    Click Element           ${PCP_Customer Spoken Language}
    Click Element           (//span[contains(.,'${Input_Customer Spoken Language}')])[2]

    Press Keys              ${PCP_Customer Home Address}            ${Input_Customer Home Address}
    Press Keys              ${PCP_Customer Home Address Zipcode}    ${Input_Customer Home Address Zipcode}

    Click Element           ${PCP_Customer Home Address County}
    Click Element           ${PCP_Customer Home Address City}

    Click Element           (//span[contains(text(),'${Input_Customer Home Address City}')])

    Click Element           //div[contains(@class,'ismailhomesame')]//span[contains(.,'${Input_Is mailing address same as home address?}')]
    Click Element           ${PCP_Next Button}