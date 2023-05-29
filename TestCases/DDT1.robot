*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_resources.robot
Suite Setup    Open My Browser
Suite Teardown    Close Browser
Test Template    Invalid Login

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***          username            password
Right user empty pass       admin@gmail.com     ${EMPTY}
Right user empty pass       ${EMPTY}            123456
Right user empty pass       test@gmail.com      123456


*** Keywords ***
Invalid login
    [Arguments]     ${username}      ${password}
    Input username  ${username}
    Input password  ${password}
    Click login button
    Error message should be visible