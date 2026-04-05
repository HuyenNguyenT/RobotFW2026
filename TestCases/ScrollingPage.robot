*** Settings ***
Library     SeleniumLibrary



*** Variables ***



*** Test Cases ***
Scrolling Page
     ${chrome_options}=    Evaluate
    ...    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${chrome_options}    add_argument    --ignore-certificate-errors
    Open Browser        https://www.countries-ofthe-world.com/flags-of-the-world.html       chrome      options=${chrome_options}
    Maximize Browser Window
#    Execute Javascript      window.scrollTo(0,5000)
#    Scroll Element Into View    xpath://td[text()='Haiti']
    Execute Javascript      window.scrollTo(0,document.body.scrollHeight)      #end 
    Sleep    3
    Execute Javascript      window.scrollTo(0,-document.body.scrollHeight)      #start page






