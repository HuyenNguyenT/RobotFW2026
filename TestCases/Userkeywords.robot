*** Settings ***
Library     SeleniumLibrary
Resource    ../Frame/CommonKeywords.robot



*** Variables ***
${browser}  chrome
${url}   http://10.30.7.131:57772/csp/sys/exp/%25CSP.UI.Portal.SQL.Home.zen?$NAMESPACE=MULTIMEDIA



*** Test Cases ***
TC1
    ${pageTT}=  launch Brows        ${url}      ${browser}
    Log To Console    ${pageTT}
    Log    ${pageTT}
    Input Text    name:CacheUserName    _admin
    Input Text    name:CachePassword    Oceana16
    Click Element    name:CacheLogin
    Close Browser
