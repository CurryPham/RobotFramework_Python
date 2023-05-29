*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Launch browser
    [Arguments]    ${appurl}  ${appbrowser}
    open browser    ${appurl}  ${appbrowser}
    maximize browser window
    ${title}=   get title
    [Return]    ${title}