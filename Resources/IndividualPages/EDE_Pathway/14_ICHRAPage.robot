*** Settings ***
Library  SeleniumLibrary
Library  Collections
#Library  ExtendedSelenium2Library
Library  BuiltIn


*** Variables ***
######################################## Main Xpath ########################################
${ICHRAPage_Do any of these people have an individual coverage Health Reimbursement Arrangement (HRA) through their job}          (//form//div[contains(@class,'question_answer_strip_wrap')]//span[contains(.,'${Input_Do any of these people have an individual coverage Health Reimbursement Arrangement (HRA) through their job}')])[1]
${ICHRAPage_Have any of these people been offered an individual coverage Health Reimbursement Arrangement (HRA) they haven't yet accepted through their job}          (//form//div[contains(@class,'question_answer_strip_wrap')]//span[contains(.,'${Input_Have any of these people been offered an individual coverage Health Reimbursement Arrangement (HRA) they haven't yet accepted through their job}')])[2]

${ICHRAPage_Previous Button}                                  //a[contains(.,'Previous')]
${ICHRAPage_Next Button}                                      //a[contains(.,'Next')]

######################################## Redundant Xpath ########################################


*** Keywords ***
Answer the Individual Coverage HRA Questions
    Click Element           ${ICHRAPage_Do any of these people have an individual coverage Health Reimbursement Arrangement (HRA) through their job}
    Click Element           ${ICHRAPage_Have any of these people been offered an individual coverage Health Reimbursement Arrangement (HRA) they haven't yet accepted through their job}

    Click Element           ${ICHRAPage_Next Button}