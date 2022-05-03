*** settings ***
Library				SeleniumLibrary

*** Variables ***
${message}			My Message

*** Keywords ***
Say Hello
	Log To Console		ThisIsSayHello


*** Test cases ***
TC-001 Verify that when input correct username and password that user can login
	Open Browser	file:///C:/ep01/ex06.html					browser=chrome
	Input Text		xpath=//div[span[text()='User:']]/input			input username using xpath
	Input Text		xpath=//div[span[text()='Pass:']]/input			dfdfd
	#Input Text		xpath=//input[@v='password']			555555


	#locator