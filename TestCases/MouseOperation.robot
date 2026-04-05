*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}   http://swisnl.github.io/jQuery-contextMenu/demo.html


*** Test Cases ***
Mouse Action
    #Right click action
    Open Browser        ${url}      ${browser}
    Maximize Browser Window
    Open Context Menu    xpath://span[@class='context-menu-one btn btn-neutral']
    Sleep    3
    #Double click
    Go To       https://testautomationpractice.blogspot.com/
    Maximize Browser Window
    Double Click Element    xpath://button[text()='Copy Text']
    Sleep    3
    
    #Drag and Drop
    Go To    https://codepen.io/EpsilonDeltaCriterion/pen/jLoPgE
    Maximize Browser Window
    Drag And Drop    id:box2    id:box104
    Sleep    3
    Close Browser
    
