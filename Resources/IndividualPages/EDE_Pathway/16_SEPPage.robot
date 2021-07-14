*** Settings ***
Library  SeleniumLibrary
Library  Collections
#Library  ExtendedSelenium2Library
Library  BuiltIn


*** Variables ***
######################################## Main Xpath ########################################
${SEPPage_Did any of these people lose qualifying health coverage in last 2 months}         (//form//div[contains(@class,'question_answer_strip_wrap')]//span[contains(.,'${Input_Did any of these people lose qualifying health coverage in last 2 months}')])[1]
#${SEPPage_Past SEP reporting Customer}         (//form//div[contains(@class,'question_answer_strip_wrap')]//span[contains(.,'${Customer_FullName}')])[1]
${SEPPage_Past SEP Coverage Date}                 //input[@name='Members[0].DidLoseQHCMemberLastDateofCoverage']

${SEPPage_Will any of these people lose qualifying health coverage in next 2 months}         (//form//div[contains(@class,'question_answer_strip_wrap')]//span[contains(.,'${Input_Will any of these people lose qualifying health coverage in next 2 months}')])[2]
#${SEPPage_Future SEP reporting Customer}         (//form//div[contains(@class,'question_answer_strip_wrap')]//span[contains(.,'${Customer_FullName}')])[2]
${SEPPage_Future SEP Coverage Date}                 //input[@name='Members[0].WillLoseQHCMemberLastDateofCoverage']

${SEPPage_Select any of these life changes that are applicable and must have taken place within the last 60 days?}      (//form//div[contains(@class,'question_answer_strip_wrap')]//span[contains(.,'${Input_Select any of these life changes that are applicable and must have taken place within the last 60 days?}')])

${SEPPage_Previous Button}                                  //a[contains(.,'Previous')]
${SEPPage_Next Button}                                      //a[contains(.,'Next')]

######################################## Redundant Xpath ########################################


*** Keywords ***
Answer the SEP (Recent Life Changes) Questions
    Click Element           ${SEPPage_Did any of these people lose qualifying health coverage in last 2 months}
    Click Element           (//form//div[contains(@class,'question_answer_strip_wrap')]//span[contains(.,'${Customer_FullName}')])[1]
    Press Keys              ${SEPPage_Past SEP Coverage Date}                ${Input_Past SEP Coverage Date}

    Click Element           ${SEPPage_Will any of these people lose qualifying health coverage in next 2 months}
    Click Element           ${SEPPage_Select any of these life changes that are applicable and must have taken place within the last 60 days?}

    Click Element           ${SEPPage_Next Button}