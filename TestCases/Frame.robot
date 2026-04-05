*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}   https://oceana3workspacecluster.aoc.com/services/UnifiedAgentController/workspaces/assets/help/oceana/en-us/index.html

*** Test Cases ***
Handling Frame
    Open Browser    ${url}      ${browser}
    Maximize Browser Window
    Select Frame    navwin
    Click Link    Agent Workspace page
