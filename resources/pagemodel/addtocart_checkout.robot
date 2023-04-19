*** Settings ***
Library     SeleniumLibrary
Variables    ../../resources/webelements.py

*** Keywords ***
Verify Add To Cart
    click element    ${addtocart1}
    click element    ${addtocart2}
    click element    ${cartlink}

Verify Checkout
    click element    ${checkout}
