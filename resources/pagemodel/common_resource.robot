*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}
${browser}

*** Keywords ***
Start Testcase
    open browser    ${url}      ${browser}
    maximize browser window

End Testcase
    close browser