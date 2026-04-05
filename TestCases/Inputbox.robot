*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}   https://10.30.7.116/ACMWEBAPI/swagger/ui/index#/

*** Test Cases ***
TestingInputBox
    Open Browser    ${url}      ${browser}
    Maximize Browser Window
    Title Should Be    ACM Web API
    Sleep    3s
    Click Link    xpath://li[@id='resource_Users']//a[@class='expandResource']
    Sleep    5s
    Click Element    xpath://div[@id='Users_Users_GetUsersByLocationname_content']//div[contains(@class,'authorize__btn_operation_logout')]
    Sleep    5s
    ${username_txt}   Set Variable    xpath://div[@class='api-popup-dialog']//input[@name='username']
    Element Should Be Visible    ${username_txt}
    Element Should Be Enabled    ${username_txt}
    Input Text    ${username_txt}    huong
    ${password_txt}    Set Variable    name:password
    Element Should Be Visible   ${password_txt}
    Input Text    ${password_txt}    a
    Sleep    5s
    Click Element    xpath://button[@class='auth__button auth_submit__button']
    Sleep    5s



*** Keywords ***



