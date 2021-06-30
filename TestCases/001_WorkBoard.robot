*** Settings ***
Resource  ../Resources/TestCase_Input/IndividualTC_Input.robot
Resource  ../Resources/IndividualPages/#000_All_Variables.robot
#Resource  ../Resources/IndividualPages/00_LoginPage.robot
#Resource  ../Resources/IndividualPages/01_TopMenuBar.robot
#Resource  ../Resources/IndividualPages/02_LeftSideMenu.robot
#Resource  ../Resources/IndividualPages/01_CensusCapture.robot
#Resource  ../Resources/IndividualPages/02_PlanListing.robot
#Resource  ../Resources/IndividualPages/03_CartReview.robot
#Resource  ../Resources/IndividualPages/01_FindACA.robot

*** Variables ***

*** Test Cases ***
#################### 00_LoginPage ####################
Start TestCase Execution
    Open Browser    ${QA_URL}  ${BROWSER}
    Maximize Browser Window

Userlogin
    Input Text	id:Item2_UserName	${QA_Login}
    Input Text	id:Item2_Password	${QA_Password}
    Click Element	SignIn
    Sleep   2s

#################### 01_TopMenuBar ####################
Quick Quoting on Health LOB
    Double Click ELement    ${Quick_Quoting}
	Click Element           ${LOB_Health}

#################### 03_CensusCapture ####################
Census Capture - Zipcode & City
#    Click Element	${Zipcode}
#    Input Text	    id:ZipCode	${Input_Zipcode}
    Press Keys  ${Zipcode}  ${Input_Zipcode}
    Sleep   2s
    Set
#    Click Element   //label[text()[normalize-space()='County']]/following::input
#    Click Element   //span[contains(.,'${Input_City}')]
#    Sleep   2s
#
#Census Capture - Applicant Details
#    Select From List By Value	${Applicant_Gender}  ${Input_ApplicantGender}
#    Input Text	id:CoveredMembers_0__DateOfBirth	${Input_ApplicantDOB}
#    Sleep   1s
#
#Census Capture - Spouse Details
#    Click Element   ${Add_Spouse}
#    Sleep   1s
#    Select From List By Value   ${Spouse_Gender}    ${Input_SpouseGender}
#    Input Text	id:CoveredMembers_1__DateOfBirth	${Input_SpouseDOB}
#
#Census Capture - Dependent_1 Details
#    Click Element   ${Add_Dependent}
#    Select From List By Value   ${Dependent_Gender}    ${Input_DependentGender}
#    Input Text	id:CoveredMembers_2__DateOfBirth	${Input_DependentDOB}
#
#Proceed to Plan Selection
#    Click Element   ${See Plans_Button}
#    Sleep   5s
#
##################### 04_PlanListing ####################
#
#Select Plan Bronze 8550 & Add to Cart
#    Click Element       ${Bronze 8550}
#    Sleep   2s
#
#Select Plan Super Bronze 85 + Dental & Add to Cart
#    Click Element       ${Super Bronze 85 + Dental}
#    Sleep   2s
#
#Select Plan Bronze $0 Primary Care & Add to Cart
#    Click Element       ${Bronze $0 Primary Care}
#    Sleep   2s
#
#Select Plan Core Care Bronze 2 & Add to Cart
#    Click Element       ${Core Care Bronze 2}
#    Sleep   2s
#
#Select Plan Oscar Bronze Simple & Add to Cart
#    Click Element       ${Oscar Bronze Simple}
#    Sleep   2s
#
#Proceed to Cart Review Page
#    Click Link          ${Cart Page}
#    Sleep   2s
#
##################### 05_CartReview ####################
#Select the Plan for Enrollment
#    Click Element   ${Select Plan}
#    Sleep   2s
#
#Begin Enrollment
#    Click Element   ${Begin Enrollment}
#    Sleep   2s
#
#Email the Proposal to Customer in Excel Format
#    Click Element   ${Email Proposal}
#    Sleep   1s
#    Press Keys      ${EmailProposal_First Name}      ${Input_Customer_FirstName}
#    Press Keys      ${EmailProposal_Last Name}      ${Input_Customer_LastName}
#    Press Keys      ${EmailProposal_Email Address}  ${Input_Customer_Email}
#    Press Keys      ${EmailProposal_Phone Number}   ${Input_Customer_PhoneNumber}
##    Click Element   //label[text()[normalize-space()='Phone']]/following::input
##    Click Element   //span[contains(.,'PDF Format')]
#    Press Keys      ${EmailProposal_Comments}     Optional
#    Click Element   //label[text()[normalize-space()='Type your comments here']]/following::input
#    Click Element   //span[contains(.,'Yes')]
##    Click Element   //label[text()[normalize-space()='Do you want to attach proposal in the Mail?']]/following::input
##    Click Element   //span[contains(.,'Yes')]
##    Click Element   ${EmailProposal_Send Button}
##    Sleep   2s
#
#Email the Proposal to Customer in PDF Format
#    Click Element   ${Email Proposal}
#    Sleep   1s
#    Press Keys      ${EmailProposal_First Name}     ${Input_Customer_FirstName}
#    Press Keys      ${EmailProposal_Last Name}      ${Input_Customer_LastName}
#    Press Keys      ${EmailProposal_Email Address}  ${Input_Customer_Email}
#    Press Keys      ${EmailProposal_Phone Number}   ${Input_Customer_PhoneNumber}
#    Click Element   //label[text()[normalize-space()='Phone']]/following::input
#    Click Element   //span[contains(.,'PDF Format')]
#    Press Keys      ${EmailProposal_Comments}     Optional
#    Click Element   //label[text()[normalize-space()='Type your comments here']]/following::input
#    Click Element   //span[contains(.,'Yes')]
##    Click Element   //label[text()[normalize-space()='Do you want to attach proposal in the Mail?']]/following::input
##    Click Element   //span[contains(.,'Yes')]
##    Click Element   ${EmailProposal_Send Button}
##    Sleep   2s
#
#Save the Proposal in PDF Format
#    Click Element   ${Save Proposal}
#    Sleep   1s
#    Press Keys      ${SaveProposal_First Name}     ${Input_Customer_FirstName}
#    Press Keys      ${SaveProposal_Last Name}      ${Input_Customer_LastName}
#    Press Keys      ${SaveProposal_Email Address}  ${Input_Customer_Email}
#    Press Keys      ${SaveProposal_Phone Number}   ${Input_Customer_PhoneNumber}
#    Set Focus to Element    //form//div//div//select[@name='ContactInformation.DownloadType']
#    select from list by label   //form//div//div//select[@name='ContactInformation.DownloadType']      PDF Format
##    Click Element   //form//div//label[@for='ContactInformation_DownloadType']
##    Click Element   //label[text()[normalize-space()='Phone']]/following::input
##    Click Element   //span[contains(.,'PDF Format')]
##    Press Keys      ${SaveProposal_Comments}     Optional
##    Click Element   ${SaveProposal_Save Button}
#
#
##################### 06_FindACA ####################
#Quoteless Flow
#    Click Element    ${Access Marketplace}
#Search Customer Record
#    Click Element   ${FirstName}
#    Input Text      id:FirstName	${CustomerFname}
#    Click Element   ${LastName}
#    Input Text      id:LastName     ${CustomerLname}
#    Click Element   ${DOB}
#    Press Keys      id:DateOfBirth     ${CustomerDOB}
#    Click Element   //label[text()[normalize-space()='Date of Birth']]/following::input
#    Click Element   //span[contains(.,'${State}')]
#    Click Element   ${AgentAttestation}
#    Click Element   ${CustomerSearch}
#    Sleep   5s
#New Application Creation
#    Click Element   ${CreateNewApplication}
#    Sleep   1s
#    Click Element   //div[@id='CreateApplicationmodal1']    #/div[1]/div[1]/div[1]/div[1]/input[1]
##    get window handles
#    click element     //div[@class='modal-content']
#    Click Element    //div[@class='modal-Footer']
#
#    #Click Element   //span[contains(.,'2021')][1]