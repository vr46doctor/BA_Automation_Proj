*** Settings ***
Library  SeleniumLibrary
Library  Collections
#Library  ExtendedSelenium2Library
Library  BuiltIn

*** Variables ***
######################################## Main Xpath ########################################
${MHHPage_Applicant not having a SSN Number}                                //span[contains(.,'${Input_Does Applicant have Social Security Number (SSN)?}')]
${MHHPage_What is Social Security Number (SSN) for Applicant?}              //input[contains(@id,'SocialSecurityNumber_mask')]
${MHHPage_Is Applicant a U.S. citizen or U.S. national?}                   (//form//div[@class='question_answer_strip_head'])[3]//span[contains(.,'${Input_Is Applicant a U.S. citizen or U.S. national?}')]
${MHHPage_Previous Button}                                  //a[contains(.,'Previous')]
${MHHPage_Next Button}                                      //a[contains(.,'Next')]

######################################## Redundant Xpath ########################################


*** Keywords ***
Answer the More About the Household Questions
#    Page Should Contain             More About Your Household - ${Input_Customer FirstName} ${Input_Customer LastName}'s Information
#    Press Keys      ${MHHPage_What is Social Security Number (SSN) for Applicant?}        ${Input_Does Applicant have Social Security Number (SSN)?}
    Click Element       ${MHHPage_Applicant not having a SSN Number}
    Click Element       ${MHHPage_Is Applicant a U.S. citizen or U.S. national?}

#    Set Selenium Implicit Wait      10s
    Click Element       ${MHHPage_Next Button}