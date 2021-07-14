*** Settings ***
Library  SeleniumLibrary
Library  Collections
#Library  ExtendedSelenium2Library
Library  BuiltIn

*** Variables ***
######################################## Main Xpath ########################################
${IDPage_Applicant Income Type}                                 (//form[@id='incomepostform']//input[contains(@class,'dropdown')])[1]
${IDPage_Applicant Income Frequency}                            (//form[@id='incomepostform']//input[contains(@class,'dropdown')])[2]
${IDPage_Applicant Income Amount}                               //form[@id='incomepostform']//input[@id='Amount']
${IDPage_Applicant Employer Name}                               //form[@id='incomepostform']//input[@id='EmployerCompany']
${IDPage_Applicant Employer PhoneNumber}                        //form[@id='incomepostform']//input[@id='EmployerPhone']
${IDPage_Save Added Income}                                     //a[contains(.,'Save')]


######################################## Redundant Xpath ########################################


*** Keywords ***
Applicant Income Type is Job, Frequency is Yearly
    Wait Until Element Is Visible       ${IDPage_Applicant Income Type}
    Click Element       ${IDPage_Applicant Income Type}
    Click Element       (//span[contains(.,'${Input_Customer Income Type}')])

    Wait Until Element Is Visible       ${IDPage_Applicant Income Frequency}
    Click Element       ${IDPage_Applicant Income Frequency}
    Click Element       (//span[contains(.,'${Input_Customer Income Frequency}')])

    Press Keys      ${IDPage_Applicant Income Amount}       ${Input_Customer Income Amount}
    Press Keys      ${IDPage_Applicant Employer Name}       ${Input_Customer Employer Name}
    Press Keys      ${IDPage_Applicant Employer PhoneNumber}        ${Input_Customer Employer PhoneNumber}
    Click Element   ${IDPage_Save Added Income}


#Applicant Income Type is Job, Frequency is Monthly
#    Click Element       ${IncomePage_Applicant Income Type}
#    Set Selenium Implicit Wait      10s
#    Click Element       (//span[contains(.,'${Input_Customer Income Type}')])
#    Set Selenium Implicit Wait      10s
#
#    Click Element       ${IncomePage_Applicant Income Frequency}
#    Set Selenium Implicit Wait      10s
#    Click Element       (//span[contains(.,'${Input_Customer Income Frequency}')])
#    Set Selenium Implicit Wait      10s
#
#    Press Keys      ${IncomePage_Applicant Income Amount}       ${Input_Customer Income Amount}
#    Press Keys      ${IncomePage_Applicant Employer Name}       ${Input_Customer Employer Name}
#    Press Keys      ${IncomePage_Applicant Employer PhoneNumber}        ${Input_Customer Employer PhoneNumber}
#    Click Element   ${IncomePage_Save Added Income}
#    Set Selenium Implicit Wait      10s