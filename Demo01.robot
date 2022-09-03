*** Settings ***
Library  Selenium2Library

Suite Setup     Run keywords    Use Headless Browser

*** Test Cases ***
Create Headless Browser
    Go To   https://twitter.com
    Capture Page Screenshot
    [Teardown]  Close All Browsers

*** Keywords ***
Use Headless Browser
    ${chrome_options} =     Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()   sys, selenium.webdriver
    Call Method     ${chrome_options}   add_argument    headless
    Call Method     ${chrome_options}   add_argument    disable-gpu
    Create Webdriver    Chrome  chrome_options=${chrome_options}
