*** Settings ***
Library    SeleniumLibrary
Library    SeleniumLibrary
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Close Browser
    open browser    https://google.com/    chrome
    maximize browser window
    sleep    1


    open browser    https://bing.com/    chrome
    maximize browser window


    switch browser    1
    ${title1}=  get title
    log to console  ${title1}

    switch browser    2
    ${title2}=  get title
    log to console  ${title2}


    sleep    1
    close all browsers


*** Keywords ***