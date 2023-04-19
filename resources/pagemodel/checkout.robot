*** Settings ***
Library     SeleniumLibrary
Variables    ../../resources/webelements.py

*** Variables ***
&{details}      firstname=Ashnner     lastname=Grover       pincode=560041

*** Keywords ***
Input Customer Details
    input text    ${firstname}  ${details.firstname}
    input text    ${lastname}   ${details.lastname}
    input text    ${postalcode}    ${details.pincode}

Checkout
    click element    ${continueicon}