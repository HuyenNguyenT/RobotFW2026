*** Settings ***
Library     SeleniumLibrary



*** Variables ***
${browser}      chrome
${url}      C:/Users/Administrator/Desktop/demoqa.comautomation-practice-form.html



*** Test Cases ***
Handing DrpDowns and List
    Open Browser    ${url}      ${browser}
    Maximize Browser Window
    Select From List By Label    stateSelect    Haryana
    Sleep    2
    Select From List By Index    stateSelect    1
    Sleep    2






