*** Settings ***
Library  Collections
Library  Selenium2Library

*** Test Cases ***
Hello chrome headless
    ${options}=  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
    ${options.set_binary}=  Set Variable  set_binary=/Applications/Google Chrome Canary.app/Contents/MacOS/Google Chrome Canary
    ${options.add_argument}=  Set Variable  add_argument=--headless
    Create WebDriver  Chrome  chrome_options=${options}
    
    Open Browser   http://www.google.com   chrome
    Wait Until Page Contains    ffgdfgdfgdfgdfg
    Close Browser
