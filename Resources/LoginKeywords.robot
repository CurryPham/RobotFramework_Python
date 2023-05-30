*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locator.py

*** Keywords ***
Open My Browser
    [Arguments]     ${LOGIN URL}  ${browser}
    open browser    ${LOGIN URL}  ${browser}

Close Browser
    close all browsers

Open Login Page
    [Arguments]     ${LOGIN URL}
    go to   ${LOGIN URL}

Input username
    [Arguments]    ${username}
    input text    ${txt_loginUserName}      ${username}

Input password
    [Arguments]    ${password}
    input text    ${txt_loginPassword}      ${password}

Click login button
    click element    ${button_login}

Click logout button
    click element    ${button_logout}

Verify Successfull Login
    title should be    nopCommerce demo store
