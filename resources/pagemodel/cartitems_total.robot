*** Settings ***
Library     SeleniumLibrary
Variables    ../../resources/webelements.py

*** Keywords ***
Verify Text
    element text should be     ${subtotallocator}  ${subtotal}
    element text should be     ${taxlocator}    ${taxtotal}
    element text should be     ${totalamountlocator}    ${totalamount}

Checkout
    click element    ${finishicon}