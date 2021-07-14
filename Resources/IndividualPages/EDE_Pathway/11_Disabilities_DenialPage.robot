*** Settings ***
Library  SeleniumLibrary
Library  Collections
#Library  ExtendedSelenium2Library
Library  BuiltIn


*** Variables ***
######################################## Main Xpath ########################################
${DDPage_Do any of these people have a physical disability or mental health condition}            (//form//div[contains(@class,'question_answer_strip_wrap')][1]//span[contains(.,'${Input_Do any of these people have a physical disability or mental health condition}')])[1]
${DDPage_Do any of these people need help with daily activities}                                  (//form//div[contains(@class,'question_answer_strip_wrap')][2]//span[contains(.,'${Input_Do any of these people need help with daily activities}')])[1]
${DDPage_Were any of these people found not eligible for Medicaid or KidCare}            (//form//div[contains(@class,'question_answer_strip_wrap')][3]//span[contains(.,'${Input_Were any of these people found not eligible for Medicaid or KidCare}')])[1]
${DDPage_Did any of these people have coverage that will end soon or that recently ended because of a change in eligibility}            (//form//div[contains(@class,'question_answer_strip_wrap')][4]//span[contains(.,'${Input_Did any of these people have coverage that will end soon or that recently ended because of a change in eligibility}')])[1]

${DDPage_Previous Button}                                  //a[contains(.,'Previous')]
${DDPage_Next Button}                                      //a[contains(.,'Next')]

######################################## Redundant Xpath ########################################


*** Keywords ***
Answer the Disabilities & Medicaid Denial Questions
    Click Element               ${DDPage_Do any of these people have a physical disability or mental health condition}
    Click Element               ${DDPage_Do any of these people need help with daily activities}
    Click Element               ${DDPage_Were any of these people found not eligible for Medicaid or KidCare}
    Click Element               ${DDPage_Did any of these people have coverage that will end soon or that recently ended because of a change in eligibility}

    Click Element               ${DDPage_Next Button}