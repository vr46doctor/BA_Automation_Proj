*** Settings ***
Resource  ../Resources/Common_Keywords.robot
Resource  ../Resources/Scenario_Keywords.robot

*** Test Cases ***
Verify Multi City Zipcode Quoting flow for 1 member Household
    [Documentation]  This test case verifies the quoting flow for 1 member HH against Multi City Zipcode
    [Tags]  Mainstream

    Start TestCase Execution
    Userlogin
    Quick Quoting on Health LOB
    Census Capture - Zipcode & City
    Census Capture - Primary Applicant Details
    Proceed to Plan Selection
    Select Plan Bronze 8550 & Add to Cart
    Proceed to Cart Review Page
    Select the Plan for Enrollment
    Begin Enrollment
#    Proceed with Customer Information
    Click Element   //div[@id='myContactModal'] | //input[@id='ContactInformation_CIMode'] | //input[@name='ContactInformation.LastName']
#    Click Element   //input[@name='ContactInformation.FirstName']
    Input Text Into Alert  ${Customer_First Name}     ${Input_Lead_FirstName}
#    Click Element   //input[@name='ContactInformation.LastName']
#    Input Text Into Alert  ${Customer_Last Name}      ${Input_Lead_LastName}
#    Click Element   //input[@id='ContactInformation_CIMode'] | //input[@name='ContactInformation.FirstName']

#    Click Element   //input[@id='ContactInformation_CIMode'] | //input[@name='ContactInformation.FirstName']

#    Click Element   //a[@href][contains(.,'Save')]