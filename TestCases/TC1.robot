*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}   https://oceana3workspacecluster.aoc.com/services/UnifiedAgentController/workspaces/#/home


*** Test Cases ***
LoginTest
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    loginToApplication
    Sleep    5s
    Close Browser

*** Keywords ***
loginToApplication
    Input Text    id:username    saml_huyen9@svoceana.com
    Input Text    id:password    1_Abc_123
    Click Element    xpath://button[@id='login-button']
    Sleep    5s
    Click Element    xpath://button[@puppeteer-id='activate--button']




