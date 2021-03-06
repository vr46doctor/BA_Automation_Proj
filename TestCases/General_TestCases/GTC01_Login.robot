*** Settings ***
Resource  ../Resources/TestCase_Inputs/General_TestCases/INPUT_General_TestCases.robot      #specifying the Input file
Resource  ../Resources/IndividualPages/Common/00_LoginPage.robot   ##specify the POM file
Resource  ../Resources/IndividualPages/Common/01_TopMenuBar.robot

*** Test Cases ***
Verify Login function in BA ${Test_Environment} environment
    [Documentation]  This Test Case verifies the Login Functionality in the specified Test Environment
    [Tags]  Functional

    Start Test Execution
    Perform Userlogin
    Perform Sign Out for a logged in a User
#    Finish Test Execution