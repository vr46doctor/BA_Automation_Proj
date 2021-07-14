*** Settings ***
Library  SeleniumLibrary

*** Variables ***
######################################## Environment ########################################
${BROWSER}                              chrome
${Test_Environment}                     QA
${Test_URL}                             https://shop-qa.benefitalign.com/brokerengage/benefitalign/home/login
######################################## Usernames ########################################
${Login_Username}                       edeagency1
${Login_Password}                       Test1234
######################################## Quoting ########################################
${Input_LOB_Quoting}                    Health
${Input_Zipcode}                        33321
${Input_City}                           Fort Lauderdale
${Input_ApplicantGender}                M
${Input_ApplicantDOB}                   01/01/1981
${Input_SpouseGender}
${Input_SpouseDOB}
${Input_Dependent_1_Gender}
${Input_Dependent_1_DOB}
######################################## Email/Save/Download Proposal ########################################
${Input_Customer_FirstName}             SaveProposalExcel
${Input_Customer_LastName}              JuneFourteen
${Input_Customer_Email}                 prem.joseph@benefitalign.com
${Input_Customer_PhoneNumber}           5556664455
${Input_EmailProposal_Comments}         PFA the attached Proposal for your perusal
${Input_SaveProposal_Comments}          Proposal for Perusal
${Input_DownloadProposal_Comments}      