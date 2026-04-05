*** Settings ***
Library     SeleniumLibrary
Resource    CommonKeywords.robot


*** Variables ***
${browser}  chrome
${url}   https://oceanauaccluster184.aoc.com/services/UnifiedAgentController/workspaces/#/activate


*** Test Cases ***
TabbedWindows Test
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Agent Login    saml_huyen3@svoceana.com    1_Abc_123
        Agent Start Work
        Click Button    id:ow_open_help
        Switch Window   title=Avaya Workspaces for Avaya Oceana® Online Help
        Select Frame    navwin
        Click Link    Text avatars
        Sleep    5
        Close Window








