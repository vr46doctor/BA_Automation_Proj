*** Settings ***
Library  Selenium2Library
Library  Collections
Library  ExtendedSelenium2Library
Library  BuiltIn
Test Timeout  7s

*** Variables ***
#################### Quoting/03_CartReview ####################
${Select Plan_1}                        (//a[@href][contains(.,'Select')])[1]    #Select 1st plan in Cart Review page
${Select Plan_2}                        (//a[@href][contains(.,'Select')])[2]    #Select 2nd plan in Cart Review page
${Select Plan_3}                        (//a[@href][contains(.,'Select')])[3]    #Select 3rd plan in Cart Review page
${Begin Enrollment}                     (//a[@href][contains(.,'Begin Enrollment')])[3]    #Button present to the right of plan tile
#${Begin Enrollment}                     (//a[@href][contains(.,'Begin Enrollment')])[1]    #Button present under Custom Plans in Cart page
#${Begin Enrollment}                     //a[contains(@actiontype,'ENROLLMENT')])[4]      #Button present to the right of plan
${Cancel Enrollment}                    //a[contains(.,'Continue Shopping')]
###################################### Email Proposal ######################################
${Email Proposal}                       //bdo[contains(.,'Email Proposal')]
#${Email Proposal}                       //a[@href][contains(.,'Email Proposal')]
${EmailProposal_First Name}             //form[@id='ContactInformationForm']//input[@id='ContactInformation_FirstName']
${EmailProposal_Last Name}              //form[@id='ContactInformationForm']//input[@id='ContactInformation_LastName']
${EmailProposal_Email Address}          //form[@id='ContactInformationForm']//input[@id='ContactInformation_EmailAddress']
${EmailProposal_Phone Number}           //form[@id='ContactInformationForm']//input[@id='ContactInformation_PhoneNumber']
${EmailProposal_Choose Format}          (//form[@id='ContactInformationForm']//input[contains(@class,'dropdown')])[2]
${EmailProposal_Format-Excel}           (//span[contains(.,'Excel Format')])[1]
${EmailProposal_Format-PDF}             (//span[contains(.,'PDF Format')])[1]
${EmailProposal_Comments}               //form[@id='ContactInformationForm']//textarea[@id='ContactInformation_Comment']
${EmailProposal_MailAttachment}         (//form[@id='ContactInformationForm']//input[contains(@class,'dropdown')])[3]
${Attach Proposal in Email}             (//span[contains(.,'Yes')])[1]
${Don't Attach Proposal in Email}       (//span[contains(.,'No')])[1]
${EmailProposal_EnrollLink}             (//form[@id='ContactInformationForm']//input[contains(@class,'dropdown')])[4]
${Include EnrollLink}                   (//span[contains(.,'Yes')])[2]
${Don't Include EnrollLink}             (//span[contains(.,'No')])[2]
${EmailProposal_Send Button}             //form[@id='ContactInformationForm']//a[@href][contains(.,'Send')]
${EmailProposal_Cancel Button}           //form[@id='ContactInformationForm']//a[@href][contains(.,'Cancel')]
###################################### Save Proposal ######################################
${Save Proposal}                        //bdo[contains(.,'Save Proposal')]
#${Save Proposal}                        //a[@href][contains(.,'Save Proposal')]
${SaveProposal_First Name}              //form[@id='saveproposalContactInformationForm']//input[@id='ContactInformation_FirstName']
${SaveProposal_Last Name}               //form[@id='saveproposalContactInformationForm']//input[@id='ContactInformation_LastName']
${SaveProposal_Email Address}           //form[@id='saveproposalContactInformationForm']//input[@id='ContactInformation_EmailAddress']
${SaveProposal_Phone Number}            //form[@id='saveproposalContactInformationForm']//input[@id='ContactInformation_PhoneNumber']
${SaveProposal_Choose Format}           (//form[@id='saveproposalContactInformationForm']//input[contains(@class,'dropdown')])[2]
${SaveProposal_Format-Excel}            (//span[contains(.,'Excel Format')])[2]
${SaveProposal_Format-PDF}              (//span[contains(.,'PDF Format')])[2]
${SaveProposal_Comments}                //form[@id='saveproposalContactInformationForm']//textarea[@id='ContactInformation_Comment']
${SaveProposal_Save Button}             //form[@id='saveproposalContactInformationForm']//a[@href][contains(.,'Save')]
${SaveProposal_Cancel Button}           //form[@id='saveproposalContactInformationForm']//a[@href][contains(.,'Cancel')]
###################################### Download Proposal ######################################
${Download Proposal}                    //bdo[contains(.,'Download Proposal')]
#${Download Proposal}                   //a[@href][contains(.,'Download Proposal')]
${DownloadProposal_First Name}          //form[@id='DownLoadProposalContactInformationForm']//input[@id='ContactInformation_FirstName']
${DownloadProposal_Last Name}           //form[@id='DownLoadProposalContactInformationForm']//input[@id='ContactInformation_LastName']
${DownloadProposal_Email Address}       //form[@id='DownLoadProposalContactInformationForm']//input[@id='ContactInformation_EmailAddress']
${DownloadProposal_No Email}            //form[@id='DownLoadProposalContactInformationForm']//span[contains(.,'No email id available')]
${DownloadProposal_Phone Number}        //form[@id='DownLoadProposalContactInformationForm']//input[@id='ContactInformation_PhoneNumber']
${DownloadProposal_Choose Format}       (//form[@id='DownLoadProposalContactInformationForm']//input[contains(@class,'dropdown')])[2]
${DownloadProposal_Format-Excel}        (//span[contains(.,'Excel Format')])[3]
${DownloadProposal_Format-PDF}          (//span[contains(.,'PDF Format')])[3]
${DownloadProposal_Download Button}     //form[@id='DownLoadProposalContactInformationForm']//a[@href][contains(.,'Download')]
${DownloadProposal_Cancel Button}       //form[@id='DownLoadProposalContactInformationForm']//a[@href][contains(.,'Cancel')]


*** Keywords ***
Select the Plan_1 for Enrollment
    Click Element   ${Select Plan_1}
    Sleep   2s

Select the Plan_2 for Enrollment
    Click Element   ${Select Plan_2}
    Sleep   2s

Select the Plan_3 for Enrollment
    Click Element   ${Select Plan_3}
    Sleep   2s

Begin Enrollment
    Click Element   ${Begin Enrollment}
    Sleep   2s

Cancel Enrollment
    Click Element   ${Cancel Enrollment}
    Sleep   2s

###################################### Email Proposal ######################################
Input Customer Information to whom Proposal is to be Emailed
    Click Element   ${Email Proposal}
    Sleep   1s
    Press Keys      ${EmailProposal_First Name}      ${Input_Customer_FirstName}
    Press Keys      ${EmailProposal_Last Name}      ${Input_Customer_LastName}
    Press Keys      ${EmailProposal_Email Address}  ${Input_Customer_Email}
    Press Keys      ${EmailProposal_Phone Number}   ${Input_Customer_PhoneNumber}

Generate the Proposal in Excel Format to Email
    Click Element   ${EmailProposal_Choose Format}
    Click Element   ${EmailProposal_Format-Excel}

Generate the Proposal in PDF Format to Email
    Click Element   ${EmailProposal_Choose Format}
    Click Element   ${EmailProposal_Format-PDF}

Input any comments to be added along with Proposal Email
    Press Keys      ${EmailProposal_Comments}     ${Input_EmailProposal_Comments}

Include generated Proposal with the Email
    Click Element   ${EmailProposal_MailAttachment}
    Sleep   1s
    Click Element   ${Attach Proposal in Email}
    Sleep   1s

Don't Include generated Proposal with the Email
    Click Element   ${EmailProposal_MailAttachment}
    Sleep   1s
    Click Element   ${Don't Attach Proposal in Email}
    Sleep   1s

Include Enrollment Link in Proposal to Email
    Click Element   ${EmailProposal_EnrollLink}
    Click Element   ${Include EnrollLink}

Don't Include Enrollment Link in Proposal to Email
    Click Element   ${EmailProposal_EnrollLink}
    Click Element   ${Don't Include EnrollLink}

Email the Proposal to the Customer
    Click Element   ${EmailProposal_Send Button}

Cancel Sending the Email
    Click Element   ${EmailProposal_Cancel Button}

###################################### Save Proposal ######################################
Input Customer Information under whose name Proposal is to be Saved
    Click Element   ${Save Proposal}
    Sleep   1s
    Press Keys      ${SaveProposal_First Name}     ${Input_Customer_FirstName}
    Press Keys      ${SaveProposal_Last Name}      ${Input_Customer_LastName}
    Press Keys      ${SaveProposal_Email Address}  ${Input_Customer_Email}
    Press Keys      ${SaveProposal_Phone Number}   ${Input_Customer_PhoneNumber}

Generate the Proposal in Excel Format to Save
    Click Element   ${SaveProposal_Choose Format}
    Click Element   ${SaveProposal_Format-Excel}

Generate the Proposal in PDF Format to Save
    Click Element   ${SaveProposal_Choose Format}
    Click Element   ${SaveProposal_Format-PDF}

Input any comments to be added along with the Saved Proposal
    Press Keys      ${SaveProposal_Comments}     ${Input_SaveProposal_Comments}

Save the Proposal under Customer Name
    Click Element   ${SaveProposal_Save Button}

Cancel Saving the Proposal
    Click Element   ${SaveProposal_Cancel Button}

###################################### Download Proposal ######################################
Input Customer Information under whose name Proposal is to be Downloaded with Email provided
    Click Element   ${Download Proposal}
    Sleep   1s
    Press Keys      ${DownloadProposal_First Name}     ${Input_Customer_FirstName}
    Press Keys      ${DownloadProposal_Last Name}      ${Input_Customer_LastName}
    Press Keys      ${DownloadProposal_Email Address}  ${Input_Customer_Email}
    Press Keys      ${DownloadProposal_Phone Number}   ${Input_Customer_PhoneNumber}

Input Customer Information under whose name Proposal is to be Downloaded with no Email
    Click Element   ${Download Proposal}
    Sleep   1s
    Press Keys      ${DownloadProposal_First Name}     ${Input_Customer_FirstName}
    Press Keys      ${DownloadProposal_Last Name}      ${Input_Customer_LastName}
    Click Element   ${DownloadProposal_No Email}
    Press Keys      ${DownloadProposal_Phone Number}   ${Input_Customer_PhoneNumber}

Generate the Proposal in Excel Format to Download
    Click Element   ${DownloadProposal_Choose Format}
    Click Element   ${DownloadProposal_Format-Excel}

Generate the Proposal in PDF Format to Download
    Click Element   ${DownloadProposal_Choose Format}
    Click Element   ${DownloadProposal_Format-PDF}

Input any comments to be added along with the Downloaded Proposal
    Press Keys      ${DownloadProposal_Comments}     ${Input_DownloadProposal_Comments}

Download the Proposal under Customer Name
    Click Element   ${DownloadProposal_Download Button}

Cancel Downloading the Proposal
    Click Element   ${DownloadProposal_Cancel Button}