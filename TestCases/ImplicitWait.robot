*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
RegTest
    open browser    ${url}  ${browser}
    maximize browser window
    title should be    nopCommerce demo store
    click link    xpath://a[@class='ico-login']
    input text    id:Email  test@gmail.com
    input text    id:Password  123456
    click element    xpath://button[text()='Log in']
    click link    xpath://a[@class='ico-account']

    ${implicittime}=    get selenium implicit wait
    log to console    ${implicittime}

    set selenium implicit wait    10

    ${implicittime}=    get selenium implicit wait
    log to console    ${implicittime}


    select radio button    Gender2      M
    select radio button    Gender      F
    select from list by label    DateOfBirthDay     10
    select from list by index    DateOfBirthMonth     12
    select from list by value    DateOfBirthYear     2000

    close browser

*** Keywords ***
