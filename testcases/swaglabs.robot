*** Settings ***
Documentation    Swag Labs Testing
Resource    ../resources/pagemodel/common_resource.robot
Resource    ../resources/pagemodel/login.robot
Resource    ../resources/pagemodel/addtocart_checkout.robot
Resource    ../resources/pagemodel/cartitems_total.robot
Resource    ../resources/pagemodel/checkout.robot
Resource    ../resources/pagemodel/finalcheckout.robot
Resource    ../resources/pagemodel/logout.robot


Test Setup    common_resource.Start Testcase
Test Teardown    common_resource.End Testcase

*** Test Cases ***
Testing Swag Labs Login Page
    [Documentation]     Swag Labs
    [Tags]    Functional Testing

    # Login Page
    login.Verify Login Authentication
    login.Verify Submit

    # AddtoCart and Checkout
    addtocart_checkout.Verify Add To Cart
    addtocart_checkout.Verify Checkout

    # Checkout
    checkout.Input Customer Details
    checkout.Checkout

    # Cartitems and Total
    cartitems_total.Verify Text
    cartitems_total.Checkout

    # Final Checkout
    finalcheckout.Verifying Text
    finalcheckout.Submit

    # Logout
    logout.Click Hamburger Icon
    logout.logout



