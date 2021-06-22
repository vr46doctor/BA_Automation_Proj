*** Settings ***
Library  Selenium2Library
Library  Collections
Library  ExtendedSelenium2Library
Library  BuiltIn
Test Timeout  7s

*** Variables ***
#################### 02_PrivacyPage ####################
${Privacy Page Next Button}         //a[contains(@id,'privacyNext')]
${Privacy Page Cancel Button}       (//a[contains(.,'Cancel')])[3]

*** Keywords ***
Provide Attestation in Privacy Page to confirm application flow in EDE Pathway
    Page Should Contain     Privacy Statement
    Click Element           //span[contains(text(),"I agree to have my information used and retrieved ")]
    Click Element           //span[contains(text(),"I understand that I'm required to provide true ans")]
    Click Element           //span[contains(text(),'I allow Benefitalign to access my application to h')]
    Click Element           ${Privacy Page Next Button}
