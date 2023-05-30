*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${browser}  chrome
${LOGIN URL}  https://demo.nopcommerce.com/login
${user}     test@gmail.com
${pwd}     123456

*** Test Cases ***
LoginTest
    Open My Browser     ${LOGIN URL}    ${browser}
    Input username  ${user}
    Input password  ${pwd}
    Click login button
    sleep    1 second
    Verify Successfull Login
    Close Browser