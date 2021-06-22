*** Settings ***
Library  Selenium2Library

*** Variables ***
######################################## Environment ########################################
${BROWSER}                              chrome
${Test_Environment}                     QA
${Test_URL}                             https://shop-qa.benefitalign.com/brokerengage/benefitalign/home/login
######################################## Usernames ########################################
${LoginUsername}                        edeagent3
${LoginPassword}                        Test1234
######################################## Quoting ########################################
${Input_Appointment State}              Colorado
${Input_Appointment Business Type}      Individual
${Input_Appointment LOB}                Health
${Input_Appointed Agent ID}             12345
${Input_Appointed Effective Date}       01/01/2020


