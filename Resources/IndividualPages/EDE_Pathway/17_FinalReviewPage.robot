*** Settings ***
Library  SeleniumLibrary
Library  Collections
#Library  ExtendedSelenium2Library
Library  BuiltIn


*** Variables ***
######################################## Main Xpath ########################################
${FinalReviewPage_Previous Button}                                  //a[contains(.,'Previous')]
${FinalReviewPage_Next Button}                                      //a[contains(.,'Next')]

######################################## Redundant Xpath ########################################


*** Keywords ***
Proceed further from Final Review Page
    Click Element           ${FinalReviewPage_Next Button}