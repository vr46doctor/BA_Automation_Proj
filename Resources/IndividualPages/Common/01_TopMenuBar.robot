*** Settings ***
Library  Selenium2Library
Library  Collections
Library  ExtendedSelenium2Library
Library  BuiltIn
Test Timeout  7s

*** Variables ***
########################################
${Hamburger Menu}               //a[@class='left sideMenu']//i[@class='material-icons'][normalize-space()='menu']
#${Hamburger Menu}               //a[@href][@class='left sideMenu']
${Tenant Logo}                  //a[@href='/brokerengage/benefitalign/home/redirecttohome']
${Quick_Quoting}                //a[@href][contains(.,'Find Insurance')]
${LOB_Health}                   //a[@href][contains(.,'Health')]
#${LOB_Health}                   //a[contains(@class,'no-padding')][normalize-space()='Health']
${LOB_Dental}                   //a[@href][contains(.,'Dental')]
${Access Marketplace}           //a[@href='/brokerengage/benefitalign/broker/findacaapplication']
#${Access Marketplace}           //a[@class='AccessGoToFFMss']
########################################

*** Keywords ***
[Timeout]  Set Selenium Timeout  7s

Quick Quoting on Health LOB
    Set Selenium Timeout  3s
    Wait Until Page Contains Element        ${Quick_Quoting}
    Double Click ELement    ${Quick_Quoting}
	Click Element           ${LOB_Health}
#	Sleep   3s

Navigate to Access Marketplace to initiate a Quoteless Flow
    Set Selenium Timeout  3s
    Wait Until Page Contains Element        ${Access Marketplace}
    Click Element           ${Access Marketplace}
#    Sleep   3s