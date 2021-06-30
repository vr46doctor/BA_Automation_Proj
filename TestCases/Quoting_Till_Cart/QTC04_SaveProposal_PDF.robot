*** Settings ***
Resource  ../Resources/TestCase_Inputs/Quoting_Till_Cart/INPUT_Quoting_Till_Cart.robot
Resource  ../Resources/IndividualPages/Common/00_LoginPage.robot
Resource  ../Resources/IndividualPages/Common/01_TopMenuBar.robot
Resource  ../Resources/IndividualPages/Quoting/01_CensusCapture.robot
Resource  ../Resources/IndividualPages/Quoting/02_PlanListing.robot
Resource  ../Resources/IndividualPages/Quoting/03_CartReview.robot

*** Test Cases ***
Verify Multi City Zipcode Quoting flow for 1 member Household and Save Proposal (PDF)
    [Documentation]  This test case verifies the quoting flow for 1 member HH against Multi City Zipcode and the proposal is saved in Excel format
    [Tags]  Mainstream
    [Timeout]  7s

QTC04.1 Environment Accessibility
    Start Test Execution

QTC04.2 Environment Login
    Perform Userlogin

QTC04.3 Quoting - Health
    Quick Quoting on the selected LOB

QTC04.4 Quoting - Census
    Census Capture - Zipcode & City
    Census Capture - Applicant Details
#    Census Capture - Spouse Details
    Proceed to Plan Selection

QTC04.5 Quoting - Plan Selection
    Select Bright Plan Bronze 8550 & Add to Cart
    Select Florida Blue Plan myBlue Bronze 1602 ($0 Labs / $0 Virtual Visits / $100+ in Rewards) & Add to Cart
    Page Scroll down
    Select Ambetter Plan Ambetter Essential Care 10 (2021) & Add to Cart
    Proceed to Cart Review Page

QTC04.6 Save the proposal in PDF format
    Input Customer Information under whose name Proposal is to be Saved
    Generate the Proposal in PDF Format to Save
    Input any comments to be added along with the Saved Proposal
    Save the Proposal under Customer Name