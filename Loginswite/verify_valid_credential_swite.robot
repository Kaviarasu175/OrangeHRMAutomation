*** Settings ***
Documentation   This suite will handle valid credential
...   test - TC_OH_2

Test Setup   Launch Browser
Resource    ../resource/commonfunctionality.resource
Test Teardown  Close Browser

Test Template   valid Credential Template

Library   DataDriver   file=../test_data/Orange_data.xlsx  sheet_name=valid_credential

*** Test Cases ***
TC1
*** Keywords ***
valid Credential Template
   [Arguments]  ${username}   ${password}    ${expected}
   Input Text    id=txtUsername   ${username}
   Input Password    id=txtPassword    ${password}
   Click Element    id=btnLogin
   Page Should Contain  ${expected}
