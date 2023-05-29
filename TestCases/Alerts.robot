*** Settings ***
Library    SeleniumLibrary
Library    SeleniumLibrary
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Close Browser
    open browser    https://testautomationpractice.blogspot.com/    chrome
    maximize browser window
    click element    xpath://button[text()='Click Me']
    sleep    1

#    handle alert    accept
#    handle alert    dismiss
#    handle alert    leave
     alert should be present    Press a button!

    sleep    1
    close browser


*** Keywords ***