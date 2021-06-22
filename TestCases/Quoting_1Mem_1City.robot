*** Settings ***
Resource  ../Resources/Common_Keywords.robot

*** Variables ***
${BROWSER}  chrome
${URL}  https://shop-qa.benefitalign.com/brokerengage/benefitalign/home/login
${SLEEP}    3

*** Test Cases ***
Login
    Open Browser    ${URL}  ${BROWSER}
    Maximize Browser Window
    Input Text	id:Item2_UserName	testridpagenttwo
    Input Text	id:Item2_Password	Test1234
    Click Link	//a[@id="SignIn"]
    Sleep   3s
Quoting - Single Member - Single city Zipcode
	Click Link  //a[@class='dropdownMenu']  #Find Insurance Button Click
    Click Element	//label[@for="ZipCode"]     #Single City Zipcode
    Input Text	id:ZipCode	33186
    Select From List By Value	//select[@name="CoveredMembers[0].Gender"]	M
    Input Text	id:CoveredMembers_0__DateOfBirth	01/01/1980
    Sleep   1s
    Click Element   xpath://button[contains(@class,'waves-effect waves-light')]     #See Plans button click
    Sleep   3s
    Click Link  xpath://a[contains(@class,'full_width_button waves-effect')]     #Planning Listing page - first plan selection
    Click Link  class:cart_apply     #My Cart click
    Sleep   3s
    Click Link  xpath://a[@data-carrier='Bright Health']     #Review Page Select icon
    Sleep   3s
    #Click Link  xpath://a[contains(@class,'full_width_button waves-effect')])[2]
    #Click Button  xpath://a[@class='full_width_button waves-effect waves-light primary_background BeginEnrollmentAfterContactInformation toggleBeginEnrollmentForMedicare1']
    Click Element   xpath://a[@class,'full_width_button waves-effect waves-light primary_background BeginEnrollmentAfterContactInformation toggleBeginEnrollmentForMedicare']

    #Close Browser