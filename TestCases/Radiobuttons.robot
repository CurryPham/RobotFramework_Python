*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
Input Box
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed    2seconds

    select radio button    sex      Female
    select radio button    exp      5

    select checkbox    BlackTea
    select checkbox    RedTea

    close browser

*** Keywords ***
