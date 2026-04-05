*** Settings ***
Library     SeleniumLibrary
Resource    ../Frame/CommonKeywords.robot
Suite Setup     launch Brows    https://oceanauaccluster184.aoc.com/services/UnifiedAgentController/workspaces/#/home    chrome
Suite Teardown  Close Browsers
Test Template       Invalid Login
Test Setup      Go To    https://oceanauaccluster184.aoc.com/services/UnifiedAgentController/workspaces/#/home


*** Test Cases ***
Right user empty password   saml_huyen2@svoceana.com    ${EMPTY}
Right user wrong password     saml_huyen2@svoceana.com      1_Abc_1
Wrong user right password       saml_huyen22@svoceana.com        1_Abc_123
Wrong user right password       saml_huyen22@svoceana.com        ${EMPTY}
Wrong user wrong password       saml_huyen22@svoceana.com         1_Abc_1

*** Keywords ***
Invalid Login
    [Arguments]     ${username}     ${password}
    Input User    ${username}
    Input Passwd    ${password}
    Click Login Button
    Error message should be visible

