*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      chrome
${url}      https://demowebshop.tricentis.com/register
${spead}


*** Test Cases ***
RegTest

    Open Browser        ${url}      ${browser}
    Maximize Browser Window
    ${timeout}=     Get Selenium Timeout
    Log To Console    ${timeout}

    Set Selenium Timeout    10
    Wait Until Page Contains    Registration    #default 5s
    Select Radio Button    Gender     F
    Input Text    id:FirstName    Huyen
    Input Text    id:LastName    NT
    Input Text    id:Email    huyen1@gmail.com
    Input Text    name:Password    12345@a
    Input Text    name:ConfirmPassword    12345@a
    Click Button    id:register-button
    Close Browser

    


