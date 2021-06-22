*** Settings ***
Resource  ../Resources/TestCase_Inputs/General_TestCases/INPUT_General_TestCases.robot
Resource  ../Resources/IndividualPages/Common/00_LoginPage.robot
Resource  ../Resources/IndividualPages/Common/01_TopMenuBar.robot
Resource  ../Resources/IndividualPages/Common/02_LeftHamburger.robot
Resource  ../Resources/IndividualPages/OtherPages/01_CarrierAppointment.robot

*** Test Cases ***
This Test Case covers the Carrier Appointment for a newly created Agent in BA ${Test_Environment} environment
    [Documentation]  This Test Case covers the Carrier Appointment for a newly created Agent in the specified Test Environment
    [Tags]  Functional

    Start TestCase Execution
    Perform Userlogin
    Left Hamburger Click
    Do Carrier Appointment for the logged in Agent/Agency
    Bulk Add Carriers - Single State
#    Bulk Add Carriers - Multi State     #Enter the list of states in 01_CarrierAppointment.robot file Keyword Tag Bulk Add Carriers - Multi State


