*** Settings ***
Library  Selenium2Library
Library  Collections
Library  ExtendedSelenium2Library
Library  BuiltIn

*** Variables ***
######################################## Main Xpath ########################################
${Applicants_Does Primary Contact need health Coverage}         (//form//div[@class='question_answer_strip_head'])[1]//span[contains(.,'${Input_Does Primary Contact need health Coverage}')]
${Applicants_Do you need Financial Assistance}                  (//form//div[@class='question_answer_strip_head'])[2]//span[contains(.,'${Input_Do you need Financial Assistance}')]
${Applicants_Add Another Member}                             //a[contains(.,'Add Another Person')]
${Applicants_AddMember_1 FirstName}                         //input[contains(@name,'OtherApplicants[0].FirstName')]
${Applicants_AddMember_1 MiddleName}                        //input[contains(@name,'OtherApplicants[0].MiddleName')]
${Applicants_AddMember_1 LastName}                          //input[contains(@name,'OtherApplicants[0].LastName')]
${Applicants_AddMember_1 Gender}                            (//input[contains(@class,'dropdown')])[3]
${Applicants_AddMember_1 DOB}                               //input[contains(@name,'OtherApplicants[0].DateOfBirth')]
${Applicants_Previous Button}                           //a[contains(.,'Previous')]
${Applicants_Next Button}                               //a[contains(.,'Next')]

######################################## Redundant Xpath ########################################
#${Applicants_Does Primary Contact need health Coverage}         //input[contains(@name,'IsPrimaryContactApplicant')]
#${Applicants_Do you need Financial Assistance}                  //input[contains(@name,'IsFinancialAssistance')]


*** Keywords ***
Answer Applicant relevant Questions
    Click Element       ${Applicants_Does Primary Contact need health Coverage}
    Click Element       ${Applicants_Do you need Financial Assistance}
    Set Selenium Implicit Wait      5s

    Click Element       ${Applicants_Next Button}