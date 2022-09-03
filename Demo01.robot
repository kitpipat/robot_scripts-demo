Library           Selenium2Library
Test Setup	  Go to G
Suite Teardown	  Close All Browsers


*** Variables ***
${URL}		http://google.pt
${SearchWord}   abcd

*** Test Cases ***
Simple example Search
	Simple Search		Raul


*** Keywords ***
Simple Search
	[Arguments]		${SearchWord}
	Input Text    id:input    ${SearchWord}
	# Press Keys    id:input    ENTER
	Input Text    name:q    ${SearchWord}
	Press Keys    name:q    ENTER

Go to G
	Open Browser	${URL}		Chrome
	Maximize Browser Window
	Sleep    5s
