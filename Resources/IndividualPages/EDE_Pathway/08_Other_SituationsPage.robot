*** Settings ***
Library  SeleniumLibrary
Library  Collections
#Library  ExtendedSelenium2Library
Library  BuiltIn

*** Variables ***
######################################## Main Xpath ########################################
${OSPage_Is Applicant a naturalized or derived citizen?}                    (//form//div[@class='question_answer_strip_head'])[1]//span[contains(.,'${Input_Is Applicant a naturalized or derived citizen?}')]
${OSPage_Do any of these situations apply to Applicant?}                     (//form//div[@class='question_answer_strip_head'])[2]//span[contains(.,'${Input_Do any of these situations apply to Applicant?}')]
${OSPage_Previous Button}                                  //a[contains(.,'Previous')]
${OSPage_Next Button}                                      //a[contains(.,'Next')]

######################################## Redundant Xpath ########################################


*** Keywords ***
Answer the Other Situations related to Household Questions
    Click Element       ${OSPage_Is Applicant a naturalized or derived citizen?}
    Click Element       ${OSPage_Do any of these situations apply to Applicant?}

#    Set Selenium Implicit Wait      10s
    Click Element       ${OSPage_Next Button}