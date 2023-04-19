*** Settings ***
Library     SeleniumLibrary
Variables   ../../resources/webelements.py

*** Keywords ***
Click Hamburger Icon
    click element    ${hamburgericon}

logout
    wait until element is visible    ${logout}
    set selenium speed  1
    click element    ${logout}