*** Settings ***
Documentation   This suite will handle
...     test - TC_OH_2

Test Setup      Launch Browser
Resource    ../resource/commonfunctionality.resource

*** Test Cases ***
Emergency Contact Test
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Click Element    id=btnLogin
    Click Element    link=My Info
    Click Element    link=Emergency Contacts
    Click Element    id=btnAddContact
    Input Text    id=emgcontacts_name    sathish
    Input Text    id=emgcontacts_relationship    brother
    Input Text    id=emgcontacts_homePhone    454554
    Input Text    id=emgcontacts_mobilePhone    454554
    Input Text    id=emgcontacts_workPhone    7887
    Click Element    id=btnSaveEContact
   Table should contain  id=emgcontact_list   sathish
    Close Browser