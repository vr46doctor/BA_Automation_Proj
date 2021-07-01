*** Settings ***
Library  Selenium2Library
Library  Collections
Library  ExtendedSelenium2Library
Library  BuiltIn

*** Variables ***
######################################## Main Xpath ########################################
${TaxPage_Applicant Marital Question}                       //form//span[contains(.,'${Input_Applicant Marital Status Question}')]
${TaxPage_Is Applicant filing Tax}                          //form//div[@id='singleFiling']//span[contains(.,'${Input_Is Applicant filing Tax}')]
${TaxPage_Is Applicant claiming any Dependents}             //form//*[@id='ClaimingAsDependentsdiv']//span[contains(.,'${Input_Is Applicant claiming any Dependents}')]
${TaxPage_Is Applicant being claimed as a dependent}        (//form//*[@id='ClaimedasDependentsdiv']//span[contains(.,'${Input_Is Applicant claiming any Dependents}')])[1]
${TaxPage_Previous Button}                                  //a[contains(.,'Previous')]
${TaxPage_Next Button}                                      //a[contains(.,'Next')]

######################################## Redundant Xpath ########################################
#${TaxPage_Is Applicant filing Tax}                                 //input[contains(@name,'IsPlanningToFileTax')]
#${TaxPage_Is Applicant claiming any Dependents}                    //input[contains(@name,'IsClaimingAnyDependents')]
#${TaxPage_Is Applicant being claimed as a dependent}               //input[contains(@name,'IsClaimedAsDependent')][@type='radio']


*** Keywords ***
Answer the Tax related Questions - Marital Status, Tax Filing, Dependents
    Click Element       ${TaxPage_Applicant Marital Question}

    Click Element       ${TaxPage_Is Applicant filing Tax}

    Click Element       ${TaxPage_Is Applicant claiming any Dependents}
    Click Element       ${TaxPage_Is Applicant being claimed as a dependent}
    Set Selenium Implicit Wait      5s
    Click Element       ${TaxPage_Next Button}