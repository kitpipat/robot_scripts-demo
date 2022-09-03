*** Settings ***
Library           Selenium2Library    implicit_wait=50

*** Variables ***
${BROWSER}        chrome
${GOOGLE URL}    http://www.google.com
*** Keywords ***

    Open Browser    ${GOOGLE URL}    ${BROWSER}

    Input Text    lst-ib    สวัสดี
    Click Button    btnG

Test Teardown    Close Browser
