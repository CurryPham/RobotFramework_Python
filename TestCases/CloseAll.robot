*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Close Browser
    open browser    https://demo.nopcommerce.com    chrome
    maximize browser window

    open browser    https://facebook.com    chrome
    maximize browser window

    close all browsers


*** Keywords ***