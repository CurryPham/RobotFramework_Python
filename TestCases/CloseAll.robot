*** Settings ***
Library    SeleniumLibrary
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
LoginTest
    open browser    https://demo.nopcommerce.com    chrome
    maximize browser window

    open browser    https://facebook.com    chrome
    maximize browser window

    close all browsers


*** Keywords ***