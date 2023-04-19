*** Settings ***
Library     SeleniumLibrary
Variables   ../../resources/webelements.py

*** Variables ***
@{login_authentication}     standard_user   secret_sauce

*** Keywords ***
Verify Login Authentication
    input text      ${username}     ${login_authentication}[0]
    input password  ${password}      ${login_authentication}[1]
Verify Submit
    click element    ${clickonlogin}
