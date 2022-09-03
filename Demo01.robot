*** Settings ***
Documentation     SKC AUTOMATION TEST
Library           Selenium2Library    implicit_wait=50

*** Variables ***
${URL}            https://dev.ada-soft.com/AdaSiamKubota/login
${BROWSER}        chrome
${SELSPEED}       0.5s
${USERNAME}       009
${PASSWORD}       123456
${NPASS}          123456789

*** Test Cases ***
Login_SC
    [Setup]    Run Keywords    Open Browser    ${URL}    ${BROWSER}
    ...    AND    Set Selenium Speed    ${SELSPEED}
    # open    https://dev.ada-soft.com/AdaSiamKubota/login
    Maximize Browser Window
    type    id=oetUsername    009
    type    id=oetPassword    123456
    click    xpath=//button[@id='obtLOGConfirmLogin']/span
    Wait Until Page Contains    บริษัทสยามคูโบต้าคอร์ปอเรชั่น จำกัด    50
    ${response}    Get Text    xpath=//*[@id="spnCompanyName"]
    Should Be Equal As Strings    ${response}    บริษัทสยามคูโบต้าคอร์ปอเรชั่น จำกัด
    [Teardown]    Close Browser
