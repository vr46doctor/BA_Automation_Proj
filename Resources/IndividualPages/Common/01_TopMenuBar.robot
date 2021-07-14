*** Settings ***
Library  SeleniumLibrary
Library  Collections
#Library  ExtendedSelenium2Library
Library  BuiltIn

*** Variables ***
######################################## Main Xpath ########################################
${Hamburger Menu}               //a[@class='left sideMenu']//i[@class='material-icons'][normalize-space()='menu']
${Tenant Logo}                  //a[@href='/brokerengage/benefitalign/home/redirecttohome']
${Quick_Quoting}                //a[@href][contains(.,'Find Insurance')]
${LOB_Quoting}                  //a[@href][contains(.,'${Input_LOB_Quoting}')]
${Access Marketplace}           //a[@href='/brokerengage/benefitalign/broker/findacaapplication']
${Logged In User Menu dropdown}     //a[contains(@class,'dropdownMenu user-details')]
${Logged In User Sign Out}          //div[@id='dropdownMenuListSec']//a[@href='/brokerengage/benefitalign/home/logout'][contains(.,'Sign Out')]

######################################## Redundant Xpath ########################################
#${Hamburger Menu}               //a[@href][@class='left sideMenu']
#${LOB_Health}                   //a[@href][contains(.,'Health')]
#${LOB_Health}                   //a[contains(@class,'no-padding')][normalize-space()='Health']
#${LOB_Dental}                   //a[@href][contains(.,'Dental')]
#${Access Marketplace}           //a[@class='AccessGoToFFMss']

######################################## ########################################

*** Keywords ***
Quick Quoting on the selected LOB
#    Set Selenium Implicit Wait      5s
    Wait Until Page Contains Element        ${Quick_Quoting}
    Double Click ELement    ${Quick_Quoting}
	Click Element           ${LOB_Quoting}
#	Sleep   3s

Navigate to Access Marketplace
    Wait Until Page Contains Element        ${Access Marketplace}
    Click Element           ${Access Marketplace}
#    Set Selenium Implicit Wait      5s
#    Sleep   3s


Perform Sign Out for a logged in a User
    Click ELement       ${Logged In User Menu dropdown}
    Click Element       ${Logged In User Sign Out}