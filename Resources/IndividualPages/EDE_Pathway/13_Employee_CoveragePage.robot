*** Settings ***
Library  SeleniumLibrary
Library  Collections
#Library  ExtendedSelenium2Library
Library  BuiltIn


*** Variables ***
######################################## Main Xpath ########################################
${ESCPage_Will any of these people be offered health coverage through a job}      //form//div[contains(@class,'widget_content')]//span[contains(.,'${Input_Will any of these people be offered health coverage through a job}')]

${ESCPage_Previous Button}                                  //a[contains(.,'Previous')]
${ESCPage_Next Button}                                      //a[contains(.,'Next')]

######################################## Redundant Xpath ########################################


*** Keywords ***
Answer the Employee Sponsored Coverage Questions
    Click Element               ${ESCPage_Will any of these people be offered health coverage through a job}

    Click Element               ${ESCPage_Next Button}