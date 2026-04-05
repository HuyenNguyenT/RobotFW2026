*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${TIMEOUT}    30s
${URL}    https://ocp148.aoc.com/services/OceanaDataViewer/ocp/home


*** Test Cases ***
Table Validations
    Open Browser        ${URL}       chrome
    Maximize Browser Window
    Input Text    id:username    oceanautoadmin1@svoceana.com
    Input Text    id:password    1_Abc_123
    Click Element    id:login-button
    Wait Until Element Is Visible    xpath://button[text()='Close']    ${TIMEOUT}
    Click Element    xpath://button[text()='Close']
    Wait Until Element Is Visible    xpath://div[contains(@onclick,'channelType=SMS')]    ${TIMEOUT}
    Click Element    xpath://div[contains(@onclick,'channelType=SMS')]
    Wait Until Element Is Visible    xpath://div[@onclick="viewContacts('closed', 'SMS')"]     ${TIMEOUT}
    Click Element    xpath://div[@onclick="viewContacts('closed', 'SMS')"] 
    Wait Until Element Is Visible    xpath://table[@class='table table-striped exportable ltr']    ${TIMEOUT}
    ${rows}=    Get Element Count    xpath://table[@class='table table-striped exportable ltr']//tbody/tr
    Log To Console    Số rows: ${rows}
    ${columns}=  Get Element Count    xpath://table[@class='table table-striped exportable ltr']//tbody/tr[1]//th
    @{columnName}=      Get List Items    xpath://table[@class='table table-striped exportable ltr']//tbody/tr[1]//th
    Log To Console    Số columns: ${columns}
    Should Be True    ${rows} > 0    msg=Table không có dữ liệu!
    Should Be True    ${columns} > 0    msg=Table không có cột!
    Click Element    xpath://span[text()='Logout']
    Wait Until Element Is Visible    xpath://button[text()='Log out']       ${TIMEOUT}
    Click Element    xpath://button[text()='Log out']
    Close Browser
