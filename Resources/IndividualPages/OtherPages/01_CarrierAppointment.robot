*** Settings ***
Library  Selenium2Library
Library  Collections
Library  ExtendedSelenium2Library
Library  BuiltIn
#Test Timeout  7s


*** Variables ***
########################################
${Bulk Add Carriers}                      //span[contains(.,'Bulk Add Carriers')]
${State Dropdown}                         (//form[@id='frmAddEditBulkAgencyCarrierRelation']//input[contains(@class,'dropdown')])[1]
${Business Type Dropdown}                 (//form[@id='frmAddEditBulkAgencyCarrierRelation']//input[contains(@class,'dropdown')])[2]
${LOB Dropdown}                           (//form[@id='frmAddEditBulkAgencyCarrierRelation']//input[contains(@class,'dropdown')])[3]
${Fetch Appointments}                     //a[contains(.,'Fetch')]
${Appointment Checkbox}                   (//tr[@class='checkclasstr']//span)
${Appointed Agent ID}                     (//div[@class='input-field checkedagentid']//input)
${Appointed Effective Date}               (//div[contains(@class,'input-field checkedeffectivedate')]//input)

${Submit Selected Appointments}           //a[contains(.,'Submit')]


*** Keywords ***
###################################### Bulk Add Carriers - Single State ######################################
Bulk Add Carriers - Single State

    Wait Until Element Is Visible   ${Bulk Add Carriers}
    Click Element   ${Bulk Add Carriers}

    Wait Until Element Is Visible       ${State Dropdown}
    Click Element   ${State Dropdown}
    Set Selenium Implicit Wait      2s
    Click Element   (//span[contains(.,'${Input_Appointment Single State}')])[3]

    Wait Until Element Is Visible       ${Business Type Dropdown}
    Click Element   ${Business Type Dropdown}
    Click Element   (//span[contains(.,'${Input_Appointment Business Type}')])[2]
    Sleep   2s

    Click Element   ${LOB Dropdown}
    Click Element   (//span[contains(.,'${Input_Appointment LOB}')])[2]

    Click Element   ${Fetch Appointments}

#    Click Element   //div[@class='collapsible-header'][contains(.,'place${Input_Appointment State}')]
#    Click Element   (//ul[@class='collapsible expandable']//div)[1]
#    Click Element   (//form[@id='frmTestAddEditBulkAgencyCarrierRelation']/ul/li/div)[1]
#    Click Element       //div[@class='collapsible-header']
    Click Element     //*[contains(@class,'collapsible-header')][contains(.,'place${var}')]//i[text()='place']

    Sleep   1s

    ${VALUES}=  Get Element Count   //table[@class='striped table_inside_inputs customers_list']/tbody/tr
    ${COUNT}=   Convert To Integer  ${VALUES}
    FOR     ${i}  IN RANGE    1  ${COUNT}+1
#                Continue For Loop If	'${i}' == 'CONTINUE'
                Run Keyword And Ignore Error	'${i}' == 'CONTINUE'    Continue For Loop
                Click Element    (${Appointment Checkbox})[${i}]
                Press Keys  (${Appointed Agent ID} )[${i}]      ${Input_Appointed Agent ID}
                Press Keys  (${Appointed Effective Date})[${i}]     ${Input_Appointed Effective Date}
#                log to console    ${i}
    END

    Click Element       ${Submit Selected Appointments}
    Wait Until Page Contains    ${Input_Appointment Single State}

###################################### Bulk Add Carriers - Multi State ######################################

Bulk Add Carriers - Multi State

#	@{Appointment States}=      Create List   Alabama   Alaska	Arizona	Arkansas    Colorado    #Connecticut	Delaware	Florida	Georgia	Hawaii	Idaho	Illinois	Indiana	Iowa	Kansas	Kentucky	Louisiana	Maine	Maryland	Massachusetts	Michigan	Minnesota	Mississippi	Missouri	Montana	Nebraska	Nevada	New Hampshire	New Jersey	New Mexico	New York	North Carolina	North Dakota	Ohio	Oklahoma	Oregon	Pennsylvania	Rhode Island	South Carolina	South Dakota	Tennessee	Texas	Utah	Vermont	Virginia	Washington	West Virginia	Wisconsin	Wyoming
    @{Appointment States}=      Create List     @{Input_Appointment Multi States}

    FOR     ${var}  IN    @{Appointment States}
                Continue For Loop If	'${var}' == 'CONTINUE'

            Wait Until Element Is Visible   ${Bulk Add Carriers}
            Click Element   ${Bulk Add Carriers}

            Wait Until Element Is Visible       ${State Dropdown}
            Click Element   ${State Dropdown}
            Set Selenium Implicit Wait      5s
            Click Element   (//span[text()='${var}'])[3]

            Wait Until Element Is Visible       ${Business Type Dropdown}
            Click Element   ${Business Type Dropdown}
            Click Element   (//span[text()='${Input_Appointment Business Type}'])[2]
            Set Selenium Implicit Wait      10s

            Click Element   ${LOB Dropdown}
            Click Element   (//span[text()='${Input_Appointment LOB}'])[2]
            Set Selenium Implicit Wait      5s

            Click Element   ${Fetch Appointments}
            Set Selenium Implicit Wait      10s

#            Click Element   //div[@class='collapsible-header'][contains(.,'place${var}')]
#            Click Element   (//ul[@class='collapsible expandable']//div)[1]
            Click Element   //form[@id='frmTestAddEditBulkAgencyCarrierRelation']//div[contains(.,'place')]
#            Click Element       //div[@class='collapsible-header']
#            Click Element     //*[contains(@class,'collapsible-header')][contains(.,'place${var}')]//i[text()='place']
            Set Selenium Implicit Wait      5s

            ${VALUES}=  Get Element Count   //table[@class='striped table_inside_inputs customers_list']/tbody/tr
            ${COUNT}=   Convert To Integer  ${VALUES}
            FOR     ${i}  IN RANGE    1  ${COUNT}+1
        #                Continue For Loop If	'${i}' == 'CONTINUE'
                        Run Keyword And Ignore Error	'${i}' == 'CONTINUE'    Continue For Loop
                        Click Element    (${Appointment Checkbox})[${i}]
                        Press Keys  (${Appointed Agent ID} )[${i}]      ${Input_Appointed Agent ID}
                        Press Keys  (${Appointed Effective Date})[${i}]     ${Input_Appointed Effective Date}
        #                log to console    ${i}
            END

            Click Element       ${Submit Selected Appointments}
            Sleep   10s
            Execute JavaScript  window.scrollTo(0,2)
            Wait Until Page Contains    ${var}
#            Execute JavaScript  window.scrollTo(0,0)


    END
