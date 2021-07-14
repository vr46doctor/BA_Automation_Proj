*** Settings ***
Library  SeleniumLibrary
Library  Collections
#Library  ExtendedSelenium2Library
Library  BuiltIn


*** Variables ***
######################################## Main Xpath ########################################
${CCPage_Are any of these people currently enrolled in health coverage?}      (//form//div[contains(@class,'widget_box')]//span[contains(.,'${Input_Are any of these people currently enrolled in health coverage?}')])[1]

${CCPage_Previous Button}                                  //a[contains(.,'Previous')]
${CCPage_Next Button}                                      //a[contains(.,'Next')]

######################################## Redundant Xpath ########################################


*** Keywords ***
Answer the Current Coverage Questions
    Click Element               ${CCPage_Are any of these people currently enrolled in health coverage?}

    Click Element               ${CCPage_Next Button}