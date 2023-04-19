*** Settings ***
Library     SeleniumLibrary
Variables    ../../resources/webelements.py

*** Keywords ***
Verifying Text
    element text should be    ${orderplacedlocator}    ${orderplaced}
    element text should be    ${orderdisptachlocator}   ${orderdispatched}

Submit
    click element    ${button}
