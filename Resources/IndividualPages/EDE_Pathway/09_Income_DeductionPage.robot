*** Settings ***
Library  SeleniumLibrary
Library  Collections
#Library  ExtendedSelenium2Library
Library  BuiltIn
Resource  ../Resources/IndividualPages/EDE_Pathway/09_IncomeTypes.robot

*** Variables ***
######################################## Main Xpath ########################################
${IDPage_Previous Button}                                  //a[contains(.,'Previous')]
${IDPage_Next Button}                                      //a[contains(.,'Next')]

######################################## Redundant Xpath ########################################


*** Keywords ***
Answer the Income & Deducation related Questions

    Click Element       (//form//*[contains(@class,'widget_box')]//span[contains(.,'${Customer_FullName}')])[1]

    Applicant Income Type is Job, Frequency is Yearly

    Wait Until Element Is Visible       ${IDPage_Next Button}
    Click Element       ${IDPage_Next Button}