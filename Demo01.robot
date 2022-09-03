*** Settings ***
Library           Selenium2Library

*** Test Cases ***
Open google chrome
    ${opt}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    

    Create Webdriver    Chrome    chrome_options=${opt}
    Go To   https://dev.ada-soft.com/AdaKingPowerClick/login
    Capture Page Screenshot
    [Teardown]    Close Browser
