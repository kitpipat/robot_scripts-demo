*** Settings ***
Library           Selenium2Library

*** Variables ***
${URL}            https://www.qahive.com
${pageTitle}      QA Hive | โคตรง่าย!!! แค่อ่านอาทิตย์ละ 2 ครั้ง ก็เป็น Automated QA ได้
${timeout}        10s

*** Test Cases ***
Open QA Hive website via chrome headless mode
    ${opt}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${opt}    add_argument    --headless
    Create Webdriver    Chrome    chrome_options=${opt}
    Go To    ${URL}
    Wait Until Page Contains    ${pageTitle}    ${timeout}
    Capture Page Screenshot
    Close Browser
