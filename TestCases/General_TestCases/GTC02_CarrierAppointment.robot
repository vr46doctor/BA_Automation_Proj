*** Settings ***
Resource  ../Resources/TestCase_Inputs/General_TestCases/INPUT_General_TestCases.robot
Resource  ../Resources/IndividualPages/Common/00_LoginPage.robot
Resource  ../Resources/IndividualPages/Common/01_TopMenuBar.robot
Resource  ../Resources/IndividualPages/Common/02_LeftSideMenu.robot
Resource  ../Resources/IndividualPages/OtherPages/01_CarrierAppointment.robot

*** Test Cases ***
This Test Case covers the Carrier Appointment for a newly created Agent/Agency in BA ${Test_Environment} environment
    [Documentation]  This Test Case covers the Carrier Appointment for a newly created Agent/Agency in the specified Test Environment
    [Tags]  Functional

    Start Test Execution
    Perform Userlogin
    Expand the Left Side Menu
    Do Carrier Appointment for the logged in Agent/Agency
#    Bulk Add Carriers - Single State
    Bulk Add Carriers - Multi State     #Enter the list of states in file INPUT_General_TestCases.robot
