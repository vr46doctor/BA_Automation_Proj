*** Settings ***
Library  SeleniumLibrary
Library  Collections
#Library  ExtendedSelenium2Library
Library  BuiltIn


*** Variables ***
######################################## Main Xpath ########################################
${IncomeSummaryPage_Unemployment Compensation Question}               //form//*[contains(@class,'widget_box')]//span[contains(.,'${Input_Unemployment Compensation eligibility}')]
${IncomeSummaryPage_Yearly Income Confirmation}                       (//form//div[contains(@class,'income_seperation')]//span[contains(.,'${Input_Customer Yearly Income Confirmation}')])[1]
${IncomeSummaryPage_Previous Button}                                  //a[contains(.,'Previous')]
${IncomeSummaryPage_Next Button}                                      //a[contains(.,'Next')]

######################################## Redundant Xpath ########################################


*** Keywords ***
Answer the Income Summary related Questions
    Click Element               ${IncomeSummaryPage_Unemployment Compensation Question}
    Click Element               ${IncomeSummaryPage_Yearly Income Confirmation}

    Click Element               ${IncomeSummaryPage_Next Button}