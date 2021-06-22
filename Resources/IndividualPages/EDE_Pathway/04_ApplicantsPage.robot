*** Settings ***
Library  Selenium2Library
Library  Collections
Library  ExtendedSelenium2Library
Library  BuiltIn
Test Timeout  7s

*** Variables ***
#################### 04_ApplicantsPage ####################
${AP_Add Another Member}                    //a[contains(.,'Add Another Person')]
${AP_First Applicant FirstName}             //input[contains(@name,'OtherApplicants[0].FirstName')]
${AP_First Applicant MiddleName}            //input[contains(@name,'OtherApplicants[0].MiddleName')]
${AP_First Applicant LastName}              //input[contains(@name,'OtherApplicants[0].LastName')]
${AP_First Applicant Gender}                (//input[contains(@class,'dropdown')])[3]
${AP_First Applicant DOB}                   //input[contains(@name,'OtherApplicants[0].DateOfBirth')]



*** Keywords ***
Health coverage Question for Primary Applicant
    Radio Button Should Be Set To       //input[contains(@name,'IsPrimaryContactApplicant')]    Y

#    Click Element       (//ul[contains(@class,'custom_yes_no')]//span[contains(.,'${Input_Does Primary Contact need health coverage}')])[1]
#    Click Element       (//ul[contains(@class,'custom_yes_no')]//span[contains(.,'${Input_Primary Applicant Health Coverage Question}')])[1]
