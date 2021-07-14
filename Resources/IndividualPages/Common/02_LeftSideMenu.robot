*** Settings ***
Library  SeleniumLibrary
Library  Collections
#Library  ExtendedSelenium2Library
Library  BuiltIn

*** Variables ***
######################################## Main Xpath ########################################
${Left Hamburger}                       //a[@href='#'][contains(@class,'left sideMenu')]
${Left Side Menu - Settings}            //span[@class='sideMenuList'][contains(.,'Settings')]
${Settings - Carrier Appointments}      (//span[@class='sideMenuList'][contains(.,'Carrier Appointments')])[1]

*** Keywords ***
Expand the Left Side Menu
    Wait Until Element Is Visible       ${Left Hamburger}
    Click Element                       ${Left Hamburger}

Do Carrier Appointment for the logged in Agent/Agency
    Wait Until Element Is Visible       ${Left Side Menu - Settings}
    Click ELement                       ${Left Side Menu - Settings}
    Wait Until Element Is Visible       ${Settings - Carrier Appointments}
    Click Element                       ${Settings - Carrier Appointments}