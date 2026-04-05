*** Settings ***
Library     SeleniumLibrary
Resource    ${CURDIR}/../Frame/CommonKeywords.robot
Resource    ${CURDIR}/../Frame/Variables.robot
Library    DateTime

*** Variables ***
${browser}  chrome
${url}   https://oceanauaccluster184.aoc.com/services/UnifiedAgentController/workspaces/#/activate


*** Test Cases ***
Login To Historical Report
    Open Browser        ${url}      ${browser}
    Maximize Browser Window
    Agent Login    saml_huyen3@svoceana.com    1_Abc_123
    Sleep    1
    ${timestamp}=   Get Current Date    result_format=%Y%m%d_%H%M%S
    Capture Element Screenshot    xpath://button[@puppeteer-id='start-work--button']   ${SCREENSHOT_DIR}/${timestamp}.png
    Sleep    1
    ${timestamp}=   Get Current Date    result_format=%Y%m%d_%H%M%S
    Capture Page Screenshot     ${SCREENSHOT_DIR}/${timestamp}_fullpage.png
