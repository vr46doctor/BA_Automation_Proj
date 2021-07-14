*** Settings ***
Library  SeleniumLibrary

*** Variables ***
######################################## Environment ########################################
${BROWSER}                                                             chrome
${Test_Environment}                                                    QA
${Test_URL}                                                            https://shop-qa.benefitalign.com/brokerengage/benefitalign/home/login
######################################## Usernames ########################################
${Login_Username}                                                      edeagency1
${Login_Password}                                                      Test1234
######################################## Find ACA Page ########################################
${Input_Customer FirstName}                                            Daniel
${Input_Customer LastName}                                             JulyFourteen
${Input_Customer DOB}                                                  01/01/1985
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
${Input_Customer Home Address}                                         Daniel Avenue
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
######################################## PCR Page ########################################
#${Input_Does Applicant live with and take care of any children age 18 or younger?}      Yes
${Input_Does Applicant live with and take care of any children age 18 or younger?}      No
######################################## MHH Page ########################################
${Input_Does Applicant have Social Security Number (SSN)?}                           Does not have a SSN
#${Input_Does Applicant have Social Security Number (SSN)?}                          317-20-1410
#${Input_Is Applicant a U.S. citizen or U.S. national?}                              No
${Input_Is Applicant a U.S. citizen or U.S. national?}                              Yes
######################################## OS Page ########################################
${Input_Is Applicant a naturalized or derived citizen?}                             No
#${Input_Is Applicant a naturalized or derived citizen?}                             Yes
${Input_Do any of these situations apply to Applicant?}                             No
#${Input_Do any of these situations apply to Applicant?}                             Yes
######################################## Income & Deduction Page ########################################
${Input_Customer Income Type}                                                   Job
${Input_Customer Income Frequency}                                              Yearly
${Input_Customer Income Amount}                                                 21000
${Input_Customer Employer Name}                                                 ABC Corp
${Input_Customer Employer PhoneNumber}                                          4445556666
#${Input_Customer Income Frequency}                                              Monthly
#${Input_Customer Income Frequency}                                              Hourly
#${Input_Customer Income Frequency}                                              Daily
#${Input_Customer Income Frequency}                                              Weekly
#${Input_Customer Income Type}                                                   Self-employment
#${Input_Customer Income Type}                                                   Farming or Fishing Income
#${Input_Customer Income Type}                                                   Unemployment
#${Input_Customer Income Type}                                                   Social Security benefits
#${Input_Customer Income Type}                                                   Retirement
#${Input_Customer Income Type}                                                   Pension benefits
######################################## Income Summary Page ########################################
${Input_Unemployment Compensation eligibility}                                  None of these people
#${Input_Unemployment Compensation eligibility}                                  ${Customer_FullName}
${Input_Customer Yearly Income Confirmation}                                    Yes
#${Input_Customer Yearly Income Confirmation}                                    No
######################################## Disabilities & Denial Page ########################################
${Input_Do any of these people have a physical disability or mental health condition}            No
${Input_Do any of these people need help with daily activities}                                  No
${Input_Were any of these people found not eligible for Medicaid or KidCare}                     No
${Input_Did any of these people have coverage that will end soon or that recently ended because of a change in eligibility}            No
######################################## Current Coverage Page ########################################
${Input_Are any of these people currently enrolled in health coverage?}             None of these people
######################################## Employee Sponsored Coverage Page ########################################
${Input_Will any of these people be offered health coverage through a job}             None of these people
######################################## ICHRA Page ########################################
${Input_Do any of these people have an individual coverage Health Reimbursement Arrangement (HRA) through their job}          None of these people
${Input_Have any of these people been offered an individual coverage Health Reimbursement Arrangement (HRA) they haven't yet accepted through their job}          None of these people
######################################## HRA Page ########################################
${Input_Have any of these people been offered an individual coverage HRA or Qualified Small Employer Health Reimbursement Arrangement (QSEHRA)}         None of these people
######################################## SEP Page ########################################
${Input_Did any of these people lose qualifying health coverage in last 2 months}           Yes
#${Input_Did any of these people lose qualifying health coverage in last 2 months}           No
${Input_Past SEP Coverage Date}                                                             06/15/2021
#${Input_Will any of these people lose qualifying health coverage in next 2 months}        Yes
${Input_Will any of these people lose qualifying health coverage in next 2 months}        No
${Input_Select any of these life changes that are applicable and must have taken place within the last 60 days?}            None of these changes


