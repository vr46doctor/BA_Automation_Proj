*** Settings ***
Library  Selenium2Library
Library  Collections
Library  ExtendedSelenium2Library
Library  BuiltIn
Test Timeout  7s

*** Variables ***
######################################## Main Xpath ########################################
${Privacy Page_Agent Attestation Checkbox 1}            //span[contains(text(),"I agree to have my information used and retrieved ")]
${Privacy Page_Agent Attestation Checkbox 2}            //span[contains(text(),"I understand that I'm required to provide true ans")]
${Privacy Page_Agent Attestation Checkbox 3}            //span[contains(text(),'I allow Benefitalign to access my application to h')]
${Privacy Page_Next Button}                             //a[contains(@id,'privacyNext')]
${Privacy Page_Cancel Button}                           (//a[contains(.,'Cancel')])[3]

*** Keywords ***
Provide Attestation in Privacy Page to confirm application flow in EDE Pathway
    Page Should Contain     Privacy Statement
    Click Element           ${Privacy Page_Agent Attestation Checkbox 1}
    Click Element           ${Privacy Page_Agent Attestation Checkbox 2}
    Click Element           ${Privacy Page_Agent Attestation Checkbox 3}
    Click Element           ${Privacy Page_Next Button}
