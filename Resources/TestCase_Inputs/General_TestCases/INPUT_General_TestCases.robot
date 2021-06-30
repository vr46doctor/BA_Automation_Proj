*** Settings ***
Library  Selenium2Library

*** Variables ***
######################################## Environment ########################################
${BROWSER}                                              chrome
${Test_Environment}                                     QA
${Test_URL}                                             https://shop-qa.benefitalign.com/brokerengage/benefitalign/home/login
######################################## Usernames ########################################
${LoginUsername}                                        edeagent3
${LoginPassword}                                        Test1234
######################################## Quoting ########################################
${Input_Appointment Single State}                       California
${Input_Appointment Business Type}                      Individual
${Input_Appointment LOB}                                Health
${Input_Appointed Agent ID}                             12345
${Input_Appointed Effective Date}                       01/01/2020
@{Input_Appointment Multi States}                       Alabama   Alaska	Arizona	    Arkansas    Colorado    Connecticut     Delaware    Florida
#                                                       Alabama   Alaska	Arizona	Arkansas    California	Colorado    Connecticut	Delaware	Florida	Georgia	Hawaii	Idaho	Illinois	Indiana	Iowa	Kansas	Kentucky	Louisiana	Maine	Maryland	Massachusetts	Michigan	Minnesota	Mississippi	Missouri	Montana	Nebraska	Nevada	New Hampshire	New Jersey	New Mexico	New York	North Carolina	North Dakota	Ohio	Oklahoma	Oregon	Pennsylvania	Rhode Island	South Carolina	South Dakota	Tennessee	Texas	Utah	Vermont	Virginia	Washington	West Virginia	Wisconsin	Wyoming


