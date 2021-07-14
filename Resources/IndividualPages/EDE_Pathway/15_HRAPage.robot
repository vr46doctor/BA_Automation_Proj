*** Settings ***
Library  SeleniumLibrary
Library  Collections
#Library  ExtendedSelenium2Library
Library  BuiltIn


*** Variables ***
######################################## Main Xpath ########################################
${HRAPage_Have any of these people been offered an individual coverage HRA or Qualified Small Employer Health Reimbursement Arrangement (QSEHRA)}           //form//div[contains(@class,'question_answer_strip_wrap')]//span[contains(.,'${Input_Have any of these people been offered an individual coverage HRA or Qualified Small Employer Health Reimbursement Arrangement (QSEHRA)}')]

${HRAPage_Previous Button}                                  //a[contains(.,'Previous')]
${HRAPage_Next Button}                                      //a[contains(.,'Next')]

######################################## Redundant Xpath ########################################


*** Keywords ***
Answer the HRA (Qualified Small Employer Health Reimbursement Arrangement (QSEHRA)) Questions
    Click Element           ${HRAPage_Have any of these people been offered an individual coverage HRA or Qualified Small Employer Health Reimbursement Arrangement (QSEHRA)}

    Click Element           ${HRAPage_Next Button}