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
    ${implicitwait}=        Get Selenium Implicit Wait
    Log To Console    ${implicitwait}
    Set Selenium Implicit Wait    10
    ${implicitwait}=        Get Selenium Implicit Wait
    Log To Console    ${implicitwait}
    Select Radio Button    Gender     F
    Input Text    id:FirstName1    Huyen
    Input Text    id:LastName    NT
    Input Text    id:Email    huyen1@gmail.com
    Input Text    name:Password    12345@a
    Input Text    name:ConfirmPassword    12345@a
    Click Button    id:register-button
    Close Browser

    


