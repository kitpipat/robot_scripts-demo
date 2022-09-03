*** Settings ***
Library           Selenium2Library

*** Variables ***
${URL}            https://www.qahive.com
${pageTitle}      QA Hive | โคตรง่าย!!! แค่อ่านอาทิตย์ละ 2 ครั้ง ก็เป็น Automated QA ได้
${timeout}        10s

*** Test Cases ***
Open QA Hive website via chrome headless mode
    Create Webdriver    Chrome    chrome_options=${options}
    ${chrome_options} =     Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}   add_argument    headless
    Call Method    ${chrome_options}   add_argument    disable-gpu
    ${options}=     Call Method     ${chrome_options}    to_capabilities  
    
    
    Go To    ${URL}
    Wait Until Page Contains    ${pageTitle}    ${timeout}
    Capture Page Screenshot
    Close Browser
