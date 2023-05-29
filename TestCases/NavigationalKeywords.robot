*** Settings ***
Library    SeleniumLibrary
Library    SeleniumLibrary
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
NavigaitionTest
    open browser    https://google.com/    chrome
    maximize browser window

    ${log}=  get location
    log to console  ${log}

    sleep    3

    go to   https://bing.com/
    ${log}=  get location
    log to console  ${log}

    sleep    3

    go back
    ${log}=  get location
    log to console  ${log}


    close browser


*** Keywords ***