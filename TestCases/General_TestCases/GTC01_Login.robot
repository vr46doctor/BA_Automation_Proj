*** Settings ***
Resource  ../Resources/TestCase_Inputs/General_TestCases/INPUT_General_TestCases.robot      #specifying the Input file
Resource  ../Resources/IndividualPages/Common/00_LoginPage.robot   ##specify the POM file


*** Test Cases ***
Verify Login function in BA ${Test_Environment} environment
    [Documentation]  This Test Case verifies the Login Functionality in the specified Test Environment
    [Tags]  Functional

    Start TestCase Execution
    Perform Userlogin
    Finish TestCase Execution