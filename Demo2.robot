*** Settings ***
Library Selenium2Library

*** Variables ***
${URL} http://www.google.com
${BROWSER} chrome

*** Test Cases ***
Demo Open Google Website With Chrome Browser
 Open Browser ${URL} ${BROWSER}
