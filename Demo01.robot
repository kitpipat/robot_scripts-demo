*** Settings ***
Library     Selenium2Library


*** Variables ***
${browser}      Chrome
${url_google}   http://www.google.com
${test_fb}      Facebook
${user_fb}      0923347061
${pass_fb}      TRT@2017


*** Test Cases ***
Search Facebook from Google
  Open Google
  Search Facebook

Log in on Facebook
  Insert user and password
  Click login btn


*** Keywords ***
Open Google
  Open Browser  ${url_google}   ${browser}

Search Facebook
  Input Text      id=lst-ib   ${test_fb}
  Click Button    name=btnK
  Wait Until Page Contains    ${test_fb}
  Click Link  https://th-th.facebook.com/

Insert user and password
  Input Text  name=email  ${user_fb} 
  Input Text  name=pass   ${pass_fb}

Click login btn
  Click Element  id=loginbutton
