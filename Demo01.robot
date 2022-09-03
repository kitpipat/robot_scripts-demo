Library           Selenium2Library

*** Variables ***
${url}            https://medium.com/@nottyo/
@{chrome_arguments}    --disable-infobars    --headless    --disable-gpu
${page_text}      Test Automation Engineer. Let’s make awesome tests
${timeout}        10s

*** Test Cases ***
TC_EXP_00001
    [Documentation]    Sample Test For Chrome Headless
    [Tags]    chrome    headless
    ${chrome_options}=    Set Chrome Options
    Create Webdriver    Chrome    chrome_options=${chrome_options}
    Go To    ${url}
    Wait Until Page Contains    ${page_text}    ${timeout}
    Capture Page Screenshot
    [Teardown]    Close Browser

*** Keywords ***
Set Chrome Options
    [Documentation]    Set Chrome options for headless mode
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    : FOR    ${option}    IN    @{chrome_arguments}
    \    Call Method    ${options}    add_argument    ${option}
    [Return]    ${options}
