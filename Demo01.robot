*** Settings ***
Library  Collections
Library  Selenium2Library

*** Test Cases ***
Hello chrome headless
    ${opt}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${opt}    add_argument    --headless
    Create Webdriver    Chrome    chrome_options=${opt}
    
    Open Browser   http://www.google.com   chrome
    Wait Until Page Contains    ffgdfgdfgdfgdfg
    Close Browser
