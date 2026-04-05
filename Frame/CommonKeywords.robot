*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Agent Login
    [Arguments]     ${username}     ${password}
    Input Text    id:username    ${username}
    Input Text    id:password    ${password}
    Click Element    xpath://button[@id='login-button']
    Wait Until Page Contains    Activate Agent
    Click Element    xpath://button[@puppeteer-id='activate--button']

Agent Start Work
    Wait Until Page Contains    Start Work
    Click Button    xpath://button[@puppeteer-id='start-work--button']


launch Brows
    [Arguments]     ${appurl}      ${appbrowser}
    Open Browser        ${appurl}  ${appbrowser}
    Maximize Browser Window
    ${title}=   Get Title
    [Return]    ${title}
    
Close Browsers
    Close All Browsers
    
Agent workspace should be visible
    Page Should Contain    Hello, you are now connected

Input User
    [Arguments]     ${username}
    Input Text    id:username    ${username}

Input Passwd
    [Arguments]     ${password}
    Input Text    id:password    ${password}

Click Login Button
    Click Element    xpath://button[@id='login-button']
Click Activate Button
    Wait Until Page Contains    Activate Agent
    Click Element    xpath://button[@puppeteer-id='activate--button']

Error message should be visible
    Sleep    2
    Page Should Contain    Invalid username/password. Please re-enter.

    