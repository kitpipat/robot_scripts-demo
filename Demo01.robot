*** Settings ***
Library    Selenium2Library
*** Variables ***
${BROWSER}        chrome
${GOOGLE URL}    http://www.google.com
*** Keywords ***

    Open Browser    ${GOOGLE URL}    ${BROWSER}

    Input Text    lst-ib    สวัสดี
    Click Button    btnG

*** Testcases ***
Search

Test Teardown    Close Browser
