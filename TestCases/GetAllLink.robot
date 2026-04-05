*** Settings ***
Library     SeleniumLibrary
Library    Collections


*** Test Cases ***
Get All Link Test
     ${chrome_options}=    Evaluate
    ...    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${chrome_options}    add_argument    --ignore-certificate-errors
    Open Browser        https://10.30.7.54/AvayaAnalytics/servlet/AnalyticsWeb      chrome      options=${chrome_options}
    Maximize Browser Window
    Input Text    id:Uid    lab1s4sup1
    Input Text    id:Pwd    1_Abc_123
    Click Element    xpath://input[@value='Login']
    Sleep    3
    Click Link    xpath://a[@class='mstrLargeIconViewItemLink']
    ${AllLinkCount}=    Get Element Count    xpath://a
    Log To Console    ${AllLinkCount}
    @{LinkItems}    Create List
    FOR    ${i}    IN RANGE    1    ${AllLinkCount}
        ${linkText}=        Get Text    xpath:(//a)[${i}]
        Append To List      @{LinkItems}        ${linkText}
        Log To Console    ${linkText}
    END



