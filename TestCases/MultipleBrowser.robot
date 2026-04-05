*** Settings ***
Library     SeleniumLibrary
Resource    ${CURDIR}/../Frame/CommonKeywords.robot

*** Variables ***
${browser}  chrome
${url}   https://demoqa.com/select-menu
#${url}   https://oceanauaccluster184.aoc.com/services/UnifiedAgentController/workspaces/#/activate
#${url1}   https://10.30.7.65/services/SMSVendorSnapin/SMSTest.html

*** Test Cases ***
Multiple Browser Test
            ${chrome_options}=    Evaluate
    ...    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${chrome_options}    add_argument    --ignore-certificate-errors
    Open Browser    ${url}    chrome    options=${chrome_options}

#        Open Browser        ${url}      ${browser}
        Maximize Browser Window
#        Agent Login    saml_huyen3@svoceana.com    1_Abc_123

        Sleep    5
        Click Element    xpath:(//div[@class='css-13cymwt-control'])[3]
        Click Element    xpath://div[contains(@class,'option') and text()='Green']
        Press Key        xpath://input[@id='react-select-4-input']    \\27

#        Open Browser        ${url1}      ${browser}
#        Maximize Browser Window
#        Switch Browser    1
#        ${title1}=   Get Title
#        Log To Console    ${title1}
#        Switch Browser    2
#        ${title2}=   Get Title
#        Log To Console    ${title2}
#        Close All Browsers


