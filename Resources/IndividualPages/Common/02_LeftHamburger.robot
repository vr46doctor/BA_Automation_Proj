*** Settings ***
Library  Selenium2Library
Library  Collections
Library  ExtendedSelenium2Library
Library  BuiltIn
Test Timeout  7s

*** Variables ***
########################################
${Left Hamburger}                       //a[@href='#'][contains(@class,'left sideMenu')]
${Left Side Menu - Settings}            //span[@class='sideMenuList'][contains(.,'Settings')]
${Settings - Carrier Appointments}      (//span[@class='sideMenuList'][contains(.,'Carrier Appointments')])[1]


*** Keywords ***
[Timeout]  Set Selenium Timeout  7s

Left Hamburger Click
    Wait Until Element Is Visible       //a[@href='#'][contains(@class,'left sideMenu')]
    Click Element   //a[@href='#'][contains(@class,'left sideMenu')]

Do Carrier Appointment for the logged in Agent/Agency
    Wait Until Element Is Visible       //span[@class='sideMenuList'][contains(.,'Settings')]
    Click ELement   //span[@class='sideMenuList'][contains(.,'Settings')]
    Wait Until Element Is Visible       (//span[@class='sideMenuList'][contains(.,'Carrier Appointments')])[1]
    Click Element   (//span[@class='sideMenuList'][contains(.,'Carrier Appointments')])[1]