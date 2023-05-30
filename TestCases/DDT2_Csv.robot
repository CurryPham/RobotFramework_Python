*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_resources.robot
Library    DataDriver   ../TestData/LoginData.Csv
Suite Setup    Open My Browser
Suite Teardown    Close Browser
Test Template    Invalid Login

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
LoginTestwithExel using ${username} and ${password}


*** Keywords ***
Invalid login
    [Arguments]     ${username}      ${password}
    Input username  ${username}
    Input password  ${password}
    Click login button
    Error message should be visible