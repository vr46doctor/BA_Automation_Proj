*** Settings ***
Library  SeleniumLibrary
Library  Collections
#Library  ExtendedSelenium2Library
Library  BuiltIn
Test Timeout  7s

*** Variables ***
#################### Quoting/02_PlanListing ####################
Carrier Bright Plans
${Bronze 8550}                                      //div[contains(@planname,'Bronze 8550')]//*[contains(@id,'mcmqAddToCart')]
${Super Bronze 85 + Dental}                         //div[contains(@planname,'Super Bronze 85 + Dental')]//*[contains(@id,'mcmqAddToCart')]
${Bronze $0 Primary Care}                           //div[contains(@planname,'Bronze $0 Primary Care')]//*[contains(@id,'mcmqAddToCart')]
${Super Bronze $0 Primary Care + Dental}			//div[contains(@planname,'Super Bronze $0 Primary Care + Dental')]//*[contains(@id,'mcmqAddToCart')]

Carrier Molina Healthcare
${Core Care Bronze 2}                               //div[contains(@planname,'Core Care Bronze 2')]//*[contains(@id,'mcmqAddToCart')]
${Core Care Bronze 1}								//div[contains(@planname,'Core Care Bronze 1')]//*[contains(@id,'mcmqAddToCart')]
${Core Care Bronze 1 + Vision}						//div[contains(@planname,'Core Care Bronze 1 + Vision')]//*[contains(@id,'mcmqAddToCart')]
${Core Care Bronze 5}								//div[contains(@planname,'Core Care Bronze 5')]//*[contains(@id,'mcmqAddToCart')]

Carrier Ambetter
${Ambetter Essential Care 1 (2021)}					//div[contains(@planname,'Ambetter Essential Care 1 (2021)')]//*[contains(@id,'mcmqAddToCart')]
${Ambetter Essential Care 2 HSA (2021)}				//div[contains(@planname,'Ambetter Essential Care 2 HSA (2021)')]//*[contains(@id,'mcmqAddToCart')]
${Ambetter Essential Care 10 (2021)}				//div[contains(@planname,'Ambetter Essential Care 10 (2021)')]//*[contains(@id,'mcmqAddToCart')]

Carrier Cigna
${Cigna Connect 8550}								//div[contains(@planname,'Cigna Connect 8550')]//*[contains(@id,'mcmqAddToCart')]
${Cigna Connect 7000}								//div[contains(@planname,'Cigna Connect 7000')]//*[contains(@id,'mcmqAddToCart')]

Carrier AvMed
${AvMed Entrust Bronze 650}							//div[contains(@planname,'AvMed Entrust Bronze 650')]//*[contains(@id,'mcmqAddToCart')]

Carrier Oscar
${Oscar Bronze Simple}                              //div[contains(@planname,'Oscar Bronze Simple')]//*[contains(@id,'mcmqAddToCart')]

Carrier Florida Blue
${myBlue Bronze 1602 ($0 Labs / $0 Virtual Visits / $100+ in Rewards)}      //div[contains(@planname,'myBlue Bronze 1602 ($0 Labs / $0 Virtual Visits / $100+ in Rewards)')]//*[contains(@id,'mcmqAddToCart')]
${myBlue Bronze 2126 (3 PCP Visits for $0 / $0 Virtual Visits)}             //div[contains(@planname,'myBlue Bronze 2126 (3 PCP Visits for $0 / $0 Virtual Visits)')]//*[contains(@id,'mcmqAddToCart')]

${Cart Page}                                        //a[@href="https://shop-qa.benefitalign.com/brokerengage/benefitalign/individual-family-health-insurance/review"]

*** Keywords ***
Page Scroll down
    Execute JavaScript  window.scrollTo(0,8000)
    Sleep   5s

####################Carrier Bright####################
Select Bright Plan Bronze 8550 & Add to Cart
    Click Element       ${Bronze 8550}
#    Sleep   2s

Select Bright Plan Super Bronze 85 + Dental & Add to Cart
    Click Element       ${Super Bronze 85 + Dental}
#    Sleep   2s

Select Bright Plan Bronze $0 Primary Care & Add to Cart
    Click Element       ${Bronze $0 Primary Care}
#    Sleep   2s

Select Bright Plan Super Bronze $0 Primary Care + Dental & Add to Cart
    Click Element       ${Super Bronze $0 Primary Care + Dental}
#    Sleep   2s

####################Carrier Molina Healthcare####################
Select Molina Plan Core Care Bronze 2 & Add to Cart
    Click Element       ${Core Care Bronze 2}
#    Sleep   2s

Select Molina Plan Core Care Bronze 1 & Add to Cart
    Click Element       ${Core Care Bronze 1}
#    Sleep   2s

Select Molina Plan Core Care Bronze 1 + Vision & Add to Cart
    Click Element       ${Core Care Bronze 1 + Vision}
#    Sleep   2s

Select Molina Plan Core Care Bronze 5 & Add to Cart
    Click Element       ${Core Care Bronze 5}
#    Sleep   2s

####################Carrier Ambetter####################
Select Ambetter Plan Ambetter Essential Care 1 (2021) & Add to Cart
    Click Element       ${Ambetter Essential Care 1 (2021)}
#    Sleep   2s

Select Ambetter Plan Ambetter Essential Care 2 HSA (2021) & Add to Cart
    Click Element       ${Ambetter Essential Care 2 HSA (2021)}
#    Sleep   2s

Select Ambetter Plan Ambetter Essential Care 10 (2021) & Add to Cart
    Click Element       ${Ambetter Essential Care 10 (2021)}
#    Sleep   2s

####################Carrier Cigna####################
Select Cigna Plan Cigna Connect 8550 & Add to Cart
    Click Element       ${Cigna Connect 8550}
#    Sleep   2s

Select Cigna Plan Cigna Connect 7000 & Add to Cart
    Click Element       ${Cigna Connect 7000}
#    Sleep   2s

####################Carrier AvMed####################
Select AvMed Plan AvMed Entrust Bronze 650 & Add to Cart
    Click Element       ${AvMed Entrust Bronze 650}
#    Sleep   2s

####################Carrier Oscar####################
Select Oscar Plan Oscar Bronze Simple & Add to Cart
    Click Element       ${Oscar Bronze Simple}
#    Sleep   2s

####################Carrier Florida Blue####################
Select Florida Blue Plan myBlue Bronze 1602 ($0 Labs / $0 Virtual Visits / $100+ in Rewards) & Add to Cart
    Click Element       ${myBlue Bronze 1602 ($0 Labs / $0 Virtual Visits / $100+ in Rewards)}
#    Sleep   2s

Select Florida Blue Plan myBlue Bronze 2126 (3 PCP Visits for $0 / $0 Virtual Visits) & Add to Cart
    Click Element       ${myBlue Bronze 2126 (3 PCP Visits for $0 / $0 Virtual Visits)}
#    Sleep   2s

########################################
Proceed to Cart Review Page
    Click Link          ${Cart Page}
#    Sleep   2s