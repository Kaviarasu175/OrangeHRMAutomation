*** Settings ***
Documentation   This suite will handle valid credential
...   test - TC_OH_2


Library  SeleniumLibrary
Library  OperatingSystem

*** Variables ***
${BROWSER}  chrome
${URL}      https://opensource-demo.orangehrmlive.com/

*** Keywords ***
Launch Browser
    Append To Environment Variable    path  ${EXECDIR}${/}driver
    Open Browser  browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Set Screenshot Directory    ${EXECDIR}${/}screenshot
    Go To   ${URL}