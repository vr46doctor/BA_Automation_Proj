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
######################################## Quoting ##############################
${Input_Customer FirstName}                                            GeorgeQA
${Input_Customer LastName}                                             JuneSixteen
${Input_Customer DOB}                                                  01/01/1982
${Input_Enrolling State}                                               Florida
${Input_Coverage Year}                                                 2021
${Input_Customer Gender}                                               M
${Input_Customer Email}
${Input_Customer Phone}                                                5554446633
${Input_Customer PhoneType}                                            Home
${Input_Communication Mode}                                            Go Paperless     #Send me paper notices in the mail
${Input_Customer Written Language}                                     English
${Input_Customer Spoken Language}                                      English
${Input_Customer Home Address}                                         GeorgeQA Mansion
${Input_Customer Home Address Zipcode}                                 33325
${Input_Customer Home Address City}                                    Fort Lauderdale
${Input_Is mailing addr same as home addr?}                            Yes
${Input_Does Primary Contact need health coverage}                     Yes
${Input_Financial Assistance Question}                                 Yes
