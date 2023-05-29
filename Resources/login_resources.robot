*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${LOGIN URL}  https://demo.nopcommerce.com/login

*** Keywords ***
Open My Browser
    open browser    ${LOGIN URL}  ${browser}

Close Browser
    close all browsers

Open Login Page
    go to   ${LOGIN URL}

Input username
    [Arguments]    ${username}
    input text    id:Email      ${username}

Input password
    [Arguments]    ${password}
    input text    id:Password       ${password}

Click login button
    click element    xpath://button[text()='Log in']

Click logout button
    click element    xpath://a[text()='Log out']

Error message should be visible
    page should contain    Login was unsuccessful

Dashboard page should be visible
    page should contain     Dashboard