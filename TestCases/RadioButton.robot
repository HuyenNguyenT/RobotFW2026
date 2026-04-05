*** Settings ***
Library     SeleniumLibrary




*** Variables ***
${browser}      chrome
${url}      C:/Users/Administrator/Desktop/demoqa.comautomation-practice-form.html


*** Test Cases ***
Testing Radio Buttons and Check Boxes
    Open Browser    ${url}      ${browser}
    Maximize Browser Window
    Set Selenium Speed    2seconds
    Select Radio Button    gender    Female
    Select Checkbox    hobbySports
    Select Checkbox    hobbyReading
#    Sleep    5s
    Unselect Checkbox    hobbySports


