*** Settings ***
Library  SeleniumLibrary
Library  Collections
#Library  ExtendedSelenium2Library
Library  BuiltIn

*** Variables ***
######################################## Main Xpath ########################################
${PCRPage_Applicant Parent/Caretaker Question}              (//form//div[contains(@class,'takencare')]//span[contains(.,'${Input_Does Applicant live with and take care of any children age 18 or younger?}')])[1]
${PCRPage_Previous Button}                                  //a[contains(.,'Previous')]
${PCRPage_Next Button}                                      //a[contains(.,'Next')]

######################################## Redundant Xpath ########################################


*** Keywords ***
Answer the Parent/Caretaker Questions
#    Page Should Contain             Tax Household - Parent/Caretaker relatives
    Click Element       ${PCRPage_Applicant Parent/Caretaker Question}
#    Set Selenium Implicit Wait      10s
    Click Element       ${PCRPage_Next Button}