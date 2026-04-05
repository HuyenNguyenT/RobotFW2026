*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      chrome
${url}      https://demowebshop.tricentis.com/register
${spead}


*** Test Cases ***
RegTest

    ${spead}=   Get Selenium Speed
    Log To Console    ${spead}
    Open Browser        ${url}      ${browser}
    Maximize Browser Window
#    each step will take 3s, default 0s
    Set Selenium Speed    1
#    Sleep    5
    Select Radio Button    Gender     F
    Input Text    id:FirstName    Huyen
    Input Text    id:LastName    NT
    Input Text    id:Email    huyen1@gmail.com
#    Sleep    5
    Input Text    name:Password    12345@a
    Input Text    name:ConfirmPassword    12345@a
    Click Button    id:register-button
    ${spead}=   Get Selenium Speed
    Log To Console    ${spead}
#    Sleep    5
    Close Browser

    


