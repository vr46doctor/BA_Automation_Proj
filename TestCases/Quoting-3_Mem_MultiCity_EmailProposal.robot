*** Settings ***
Resource  ../Resources/Common_Keywords.robot
Resource  ../Resources/01_HomePage.robot
Resource  ../Resources/02_CensusCapture.robot
Resource  ../Resources/03_PlanListing.robot
Resource  ../Resources/04_CartReview.robot

*** Test Cases ***
Verify Multi City Zipcode Quoting flow for 1 member Household
    [Documentation]  This test case verifies the quoting flow for 1 member HH against Multi City Zipcode
    [Tags]  Mainstream

    Start TestCase Execution
    Userlogin
    Quick Quoting on Health LOB
    Census Capture - Zipcode & City
    Census Capture - Applicant Details
    Proceed to Plan Selection
    Select Plan Bronze 8550 & Add to Cart
    Proceed to Cart Review Page
    Email the Proposal to Customer in PDF Format