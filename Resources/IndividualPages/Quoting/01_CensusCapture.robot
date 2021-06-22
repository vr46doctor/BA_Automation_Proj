*** Settings ***
Library  Selenium2Library
Library  Collections
Library  ExtendedSelenium2Library
Library  BuiltIn
Test Timeout  7s

*** Variables ***
#################### Quoting/01_CensusCapture ####################
${Zipcode}                      //label[@class='required'][@for='ZipCode']   #[contains(.,'Zip Code')]
#${Zipcode}                      //label[@for='ZipCode']
${City}                         (//div//input[contains(@class,'dropdown')])[3]
#${City}                         (//*[@class='select-wrapper']//input[contains(@class,'dropdown')])[3]
#${City}                         //label[text()[normalize-space()='County']]/following::input
#${City_Value}                   //span[contains(.,'${Input_City}')]
${Applicant_Gender}             //select[@name="CoveredMembers[0].Gender"]
${Add_Spouse}                   //label[contains(.,'Spouse')]
${Spouse_Gender}                //select[@name="CoveredMembers[1].Gender"]
${Add_Dependent_1}              //label[contains(.,'Dependent')]
${Dependent_1_Gender}           //select[@name="CoveredMembers[2].Gender"]
${See Plans_Button}             //button[@type='submit']

*** Keywords ***
Census Capture - Zipcode & City
    Click Element	${Zipcode}
    Input Text	    id:ZipCode	${Input_Zipcode}
    Click Element   ${City}
    Click Element   //span[contains(.,'${Input_City}')]

Census Capture - Applicant Details
    Select From List By Value	${Applicant_Gender}  ${Input_ApplicantGender}
    Input Text	    id:CoveredMembers_0__DateOfBirth	${Input_ApplicantDOB}

Census Capture - Spouse Details
    Click Element   ${Add_Spouse}
    Select From List By Value   ${Spouse_Gender}    ${Input_SpouseGender}
    Input Text	id:CoveredMembers_1__DateOfBirth	${Input_SpouseDOB}

Census Capture - Dependent_1 Details
    Click Element   ${Add_Dependent_1}
    Select From List By Value   ${Dependent_1_Gender}    ${Input_Dependent_1_Gender}
    Input Text	id:CoveredMembers_2__DateOfBirth	${Input_Dependent_1_DOB}

Proceed to Plan Selection
    Click Element   ${See Plans_Button}
