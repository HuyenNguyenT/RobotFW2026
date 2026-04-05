*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}   https://smgr21.aoc.com/SMGR/#
${url1}   https://10.30.7.65/services/SMSVendorSnapin/SMSTest.html


*** Test Cases ***
Navigation Test
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        ${loc}=     Get Location
        Log To Console    ${loc}
        Sleep    5

        Go To    ${url1}
        ${loc}=     Get Location
        Log To Console    ${loc}
        Sleep    5
        Go Back
        ${loc}=     Get Location
        Log To Console    ${loc}
        Sleep    5

        Close Browser

