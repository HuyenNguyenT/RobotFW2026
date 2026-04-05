*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
MyTestcase
       Open Browser     https://oceana3workspacecluster.aoc.com/services/UnifiedAgentController/workspaces/#/activate       chrome
       Maximize Browser Window

       Open Browser     https://10.30.7.116/ACMWEBAPI/swagger/ui/index#/        chrome
       Maximize Browser Window

       Close All Browsers
