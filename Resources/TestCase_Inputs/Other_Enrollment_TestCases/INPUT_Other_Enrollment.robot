*** Settings ***
Library  Selenium2Library

*** Variables ***
######################################## Environment ########################################
${BROWSER}                                    chrome
${Test_Environment}                           QA
${Test_URL}                                   https://shop-qa.benefitalign.com/brokerengage/benefitalign/home/login
######################################## Usernames ########################################
${Login_Username}                             edeagency1
${Login_Password}                             Test1234
######################################## Find ACA ########################################
${Input_Customer FirstName}                                            GeorgeQA
${Input_Customer LastName}                                             JulyOne
${Input_Customer DOB}                                                  01/01/1982
${Input_Enrolling State}                                               Florida
${Input_Coverage Year}                                                 2021
######################################## PC Page ########################################
${Input_Customer Gender}                                               M
${Input_Customer Email}
${Input_Customer Phone}                                                5554446633
${Input_Customer PhoneType}                                            Home
#${Input_Customer PhoneType}                                            Work
#${Input_Customer PhoneType}                                            Mobile
#${Input_Communication Mode}                                            Go Paperless
${Input_Communication Mode}                                            Send me paper notices in the mail
${Input_Customer Written Language}                                     English
${Input_Customer Spoken Language}                                      English
${Input_Customer Home Address}                                         GeorgeQA Mansion
${Input_Customer Home Address Zipcode}                                 33325
${Input_Customer Home Address City}                                    Fort Lauderdale
${Input_Is mailing address same as home address?}                      Yes
#${Input_Is mailing address same as home address?}                      No
######################################## Applicants Page ########################################
${Input_Does Primary Contact need health Coverage}                     Yes
#${Input_Does Primary Contact need health Coverage}                     No
${Input_Do you need Financial Assistance}                              Yes
#${Input_Do you need Financial Assistance}                              No
######################################## Tax Page ########################################
#${Input_Applicant Marital Status Question}                              Married
${Input_Applicant Marital Status Question}                              Single
${Input_Is Applicant filing Tax}                                        Yes
#${Input_Is Applicant filing Tax}                                        No
#${Input_Is Applicant claiming any Dependents}                           Yes
${Input_Is Applicant claiming any Dependents}                           No
#${Input_Is Applicant being claimed as a dependent}                      Yes
${Input_Is Applicant being claimed as a dependent}                      No

