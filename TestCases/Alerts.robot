*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}   https://oceana3ocpcluster.aoc.com/services/OceanaDataViewer/ocp/home

*** Test Cases ***
Handling Alerts
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Input Text    id:username    tmaadmin1@svoceana.com
    Input Text    id:password    1_Abc_123
    Click Element    xpath://button[@id='login-button']
    Click Element    xpath://div[contains(@onclick,'channelType=SMS')]
    Click Element    xpath://div[@onclick="viewContacts('closed', 'SMS')"]
    Set Selenium Timeout    10
    Wait Until Page Contains    All Closed Sms Contacts
    Click Element    xpath://table//tr[2]//input[@name='selectedRequeue']
    Click Button    xpath://button[@id='showRequeue']
    Click Button    xpath://button[@id='confirmRequeue']
    Sleep    5
    Click Link    xpath://ul[@class='nav navbar-wrapper ltr']//a[contains(text(),'SMS')]
    Click Element    xpath://div[@onclick="viewContacts('new', 'SMS')"]
    Click Button    xpath://button[@id='closeContactsButton']


    
