*** Settings ***
Library     SeleniumLibrary
Library     ${CURDIR}/../Frame/RestFunction.py
Library    String

*** Variables ***
${browser}  chrome
${url}   https://oceana3workspacecluster.aoc.com/services/UnifiedAgentController/workspaces/#/home
${disCode}      AutoDC4
${cluster_ip}   10.30.7.65
${send_to}      210806


*** Test Cases ***
SMS Disposition Code in ACW
    ${message_from}=    Generate Random String    6    [NUMBERS]
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Agent Login
    Set Selenium Timeout    20
    Agent Start Work
    Send Sms    ${cluster_ip}    ${send_to}    ${message_from}    SMS    200
    Accept Contact
    Sleep    1
    Send Message To Customer
    Close Workcard
    Sleep    2
    Set Disposition Code
    Sleep    2
    Verify Disposition Code on WC
    Complete AWC
    Sleep    2
    Agent Finish work and Exit
    Sleep    5
    Close Browser

*** Keywords ***
Agent Login
    Input Text    id:username    saml_huyen9@svoceana.com
    Input Text    id:password    1_Abc_123
    Click Element    xpath://button[@id='login-button']
    Wait Until Page Contains    Activate Agent
    Click Element    xpath://button[@puppeteer-id='activate--button']

Agent Start Work
    Wait Until Page Contains    Start Work
    Click Button    xpath://button[@puppeteer-id='start-work--button']

Accept Contact
    Set Selenium Timeout    200
    Wait Until Element Is Visible    xpath://button[@ng-click='accept()']
    Click Button    xpath://button[@ng-click='accept()']
    
Send Message To Customer
    Input Text    xpath://textarea[@aria-label='Type a message...']    Hi customer
    Click Element    xpath://button[@puppeteer-id='messenger-input__send-button']
Close Workcard
    Click Button    xpath://button[@ng-click='end()']

Set Disposition Code
    Click Element    xpath://button[@class='card-button md-icon-button aoc-more js-more md-button md-ink-ripple']
    Click Element    xpath://span[contains(text(),'Disposition Codes')]
    Wait Until Element Is Visible    xpath://input[@aria-label='Search Disposition Code']
    Clear Element Text    xpath://input[@aria-label='Search Disposition Code']
    Input Text    xpath://input[@aria-label='Search Disposition Code']    ${disCode}
    Wait Until Element Is Visible    xpath://button[normalize-space()='${disCode}']
    Click Element    xpath://button[normalize-space()='${disCode}']

Verify Disposition Code on WC
    Element Should Be Visible    css=.card__details-icon.aoc-disposition-code

Complete AWC
    Click Button    xpath://button[@ng-click='completeACW()']

Agent Finish work and Exit
    Click Button    xpath://button[@puppeteer-id='agent--dropdown-button']
    Wait Until Page Contains    Finish Work
    Click Button    id:ow_finish_work
    Click Button    xpath://button[@puppeteer-id='agent--dropdown-button']
    Wait Until Page Contains    Exit
    Click Button    id:ow_exit


