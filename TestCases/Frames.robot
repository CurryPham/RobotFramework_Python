*** Settings ***
Library    SeleniumLibrary
Library    SeleniumLibrary
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Close Browser
    open browser    https://netbanking.hdfcbank.com/netbanking/    chrome
    maximize browser window

    select frame    login_page
    unselect frame
    close browser


*** Keywords ***