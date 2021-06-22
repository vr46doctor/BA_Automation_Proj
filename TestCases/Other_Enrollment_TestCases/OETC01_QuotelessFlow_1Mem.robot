*** Settings ***
Resource  ../Resources/TestCase_Inputs/Other_Enrollment_TestCases/INPUT_Other_Enrollment.robot
Resource  ../Resources/IndividualPages/Common/00_LoginPage.robot
Resource  ../Resources/IndividualPages/Common/01_TopMenuBar.robot
Resource  ../Resources/IndividualPages/EDE_Pathway/01_FindACA.robot
Resource  ../Resources/IndividualPages/EDE_Pathway/02_PrivacyPage.robot
Resource  ../Resources/IndividualPages/EDE_Pathway/03_PCPage.robot
Resource  ../Resources/IndividualPages/EDE_Pathway/04_ApplicantsPage.robot

*** Test Cases ***
Verify Multi City Quoteless flow for a 1 member Household
    [Documentation]  This test case verifies the Multi City Quoteless flow for a 1 member Household
    [Tags]  Mainstream
    Set Selenium Implicit Wait  10s

OETC01.1 Environment Accessibility
    Start TestCase Execution

OETC01.2 Environment Login
    Perform Userlogin

OETC01.3 Start Quoteless Flow
    Navigate to Access Marketplace to initiate a Quoteless Flow

OETC01.4 Customer Record Search
    Search Customer record in CMS via Find ACA Application

OETC01.5 Create New Application
    Create a New Application for the Customer

OETC01.6 Provide Attestation
    Provide Attestation in Privacy Page to confirm application flow in EDE Pathway

OETC01.7 Primary Contact Page Information
    Verify that Customer Information provided in Find ACA page is populated in PC Page
    Enter Primary Contact details
    Health coverage Question for Primary Applicant



