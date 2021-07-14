*** Settings ***
Resource  ../Resources/TestCase_Inputs/Other_Enrollment_TestCases/INPUT_Other_Enrollment.robot
Resource  ../Resources/IndividualPages/Common/00_LoginPage.robot
Resource  ../Resources/IndividualPages/Common/01_TopMenuBar.robot
Resource  ../Resources/IndividualPages/EDE_Pathway/01_FindACA.robot
Resource  ../Resources/IndividualPages/EDE_Pathway/02_PrivacyPage.robot
Resource  ../Resources/IndividualPages/EDE_Pathway/03_PrimaryContactPage.robot
Resource  ../Resources/IndividualPages/EDE_Pathway/04_ApplicantsPage.robot
Resource  ../Resources/IndividualPages/EDE_Pathway/05_TaxPage.robot
Resource  ../Resources/IndividualPages/EDE_Pathway/06_Parent_CaretakerPage.robot
Resource  ../Resources/IndividualPages/EDE_Pathway/07_MoreAbout_HouseholdPage.robot
Resource  ../Resources/IndividualPages/EDE_Pathway/08_Other_SituationsPage.robot
Resource  ../Resources/IndividualPages/EDE_Pathway/09_Income_DeductionPage.robot
Resource  ../Resources/IndividualPages/EDE_Pathway/10_IncomeSummaryPage.robot
Resource  ../Resources/IndividualPages/EDE_Pathway/11_Disabilities_DenialPage.robot
Resource  ../Resources/IndividualPages/EDE_Pathway/12_Current_CoveragePage.robot
Resource  ../Resources/IndividualPages/EDE_Pathway/13_Employee_CoveragePage.robot
Resource  ../Resources/IndividualPages/EDE_Pathway/14_ICHRAPage.robot
Resource  ../Resources/IndividualPages/EDE_Pathway/15_HRAPage.robot
Resource  ../Resources/IndividualPages/EDE_Pathway/16_SEPPage.robot
Resource  ../Resources/IndividualPages/EDE_Pathway/17_FinalReviewPage.robot
Resource  ../Resources/IndividualPages/EDE_Pathway/18_Sign_SubmitPage.robot

*** Test Cases ***
Verify Multi City Quoteless flow for a 1 member Household
    [Documentation]  This test case verifies the Multi City Quoteless flow for a 1 member Household
    [Tags]  Mainstream
    Set Selenium Speed      0.25s
    Set Selenium Implicit Wait      10s

OETC01.1 Environment Accessibility
    Start Test Execution

OETC01.2 Environment Login
    Perform Userlogin

OETC01.3 Start Quoteless Flow
    Navigate to Access Marketplace

OETC01.4 Customer Record Search
    Search Customer record in CMS via Find ACA Application

OETC01.5 Create New Application
    Create a New Application for the Customer

OETC01.6 Provide Attestation
    Provide Attestation in Privacy Page to confirm application flow in EDE Pathway

OETC01.7 Primary Contact Page Information
    Verify that Customer Information provided in Find ACA page is populated in PC Page
    Enter Primary Contact details

OETC01.8 Provide answers relevant to the Applicant
    Answer Applicant relevant Questions

OETC01.9 Provide answers to the Tax Household questions
    Answer the Tax related Questions - Marital Status, Tax Filing, Dependents

OETC01.10 Provide answers to the Parent/Caretaker Relationship questions
    Answer the Parent/Caretaker Questions

OETC01.11 Provide answers to more about applicant household questions
    Answer the More About the Household Questions

OETC01.12 Provide answers to Other Situations related to Applicant Household questions
    Answer the Other Situations related to Household Questions

OETC01.13 Provide answers to the Income & Deducation related questions
    Answer the Income & Deducation related Questions

OETC01.14 Confirm the Income Summary for the Household
    Answer the Income Summary related Questions

OETC01.15 Confirm the Disabilities & Medicaid Denial for the Household
    Answer the Disabilities & Medicaid Denial Questions

OETC01.16 Provide Answers to the Current Coverage Questions
    Answer the Current Coverage Questions

OETC01.17 Provide Answers to the Employee Sponsored Coverage Questions
    Answer the Employee Sponsored Coverage Questions

OETC01.18 Provide Answers to the Individual Coverage HRA Questions
    Answer the Individual Coverage HRA Questions

OETC01.19 Provide Answers to the HRA (Qualified Small Employer Health Reimbursement Arrangement (QSEHRA)) Questions
    Answer the HRA (Qualified Small Employer Health Reimbursement Arrangement (QSEHRA)) Questions

OETC01.20 Provide Answers to the SEP (Recent Life Changes) Questions
    Answer the SEP (Recent Life Changes) Questions

OETC01.21 Proceed further after reviewing the data entered
    Proceed further from Final Review Page

OETC01.22 Provide all attestations in Sign & Submit page and proceed to eligibility results
    Provide all the attestations in Sign & Submit Page to obtain eligibility results

