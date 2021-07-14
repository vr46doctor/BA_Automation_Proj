*** Settings ***
Library  SeleniumLibrary
Library  Collections
#Library  ExtendedSelenium2Library
Library  BuiltIn


*** Variables ***
######################################## Main Xpath ########################################
${Sign&SubmitPage_Income Data attestation}              (//form//div[contains(@class,'widget_box')]//span[contains(.,'Agree')])[1]
${Sign&SubmitPage_Eligibility Data attestation}         (//form//div[contains(@class,'widget_box')]//span[contains(.,'Agree')])[2]
${Sign&SubmitPage_Terminate existing coverage if found eligibble for others attestation}         //form//div[contains(@class,'widget_box')]//span[contains(.,'I agree to allow the Marketplace to end the Marketplace coverage')]
${Sign&SubmitPage_Final attestation}                    //form//div[contains(@class,'widget_box')]//span[contains(.,'I agree to this statement')]
${Sign&SubmitPage_Final Consumer Digital Sign}          //input[contains(@id,'FullName')]

${Sign&SubmitPage_Previous Button}                                  //a[contains(.,'Previous')]
${Sign&SubmitPage_Next Button}                                      //a[contains(.,'Submit Application')]

######################################## Redundant Xpath ########################################


*** Keywords ***
Provide all the attestations in Sign & Submit Page to obtain eligibility results
    Click Element           ${Sign&SubmitPage_Income Data attestation}
    Click Element           ${Sign&SubmitPage_Eligibility Data attestation}
    Click Element           ${Sign&SubmitPage_Terminate existing coverage if found eligibble for others attestation}
    Click Element           ${Sign&SubmitPage_Final attestation}

    Press Keys              ${Sign&SubmitPage_Final Consumer Digital Sign}      ${Customer_FullName}

    Click Element           ${Sign&SubmitPage_Next Button}