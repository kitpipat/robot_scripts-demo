*** Settings ***
# Library 			Selenium2Library
Library 			SeleniumLibrary
Test Setup			Go to G
Suite Teardown		        Close All Browsers
Library  OperatingSystem
Suite Setup  Setup chromedriver

*** Variables ***
${URL}		http://google.pt
${EXECDIR}      C:/Users/Administrator/AppData/Local/Programs/Python\Python38

*** Keywords ****
Setup chromedriver
  Set Environment Variable  webdriver.chrome.driver  ${EXECDIR}/chromedriver.exe  

*** Test Cases ***
Simple example Search
	Simple Search		Raul


*** Keywords ***
Simple Search
	[Arguments]		${SearchWord}
	# Input Text    id:input    ${SearchWord}
	# Press Keys    id:input    ENTER
	Input Text    name:q    ${SearchWord}
	Press Keys    name:q    ENTER

Go to G
	Open Browser	${URL}		Chrome
	Maximize Browser Window
	Sleep    5s
