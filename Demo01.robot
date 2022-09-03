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
echo Test
