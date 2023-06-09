*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
Radio button
    open browser    ${url}  ${browser}
    maximize browser window
    title should be    nopCommerce demo store
    click link    xpath://a[@class='ico-login']
    input text    id:Email  test@gmail.com
    input text    id:Password  123456
    click element    xpath://button[text()='Log in']
    click link    xpath://a[@class='ico-account']

    select radio button    Gender      M
    sleep    1
    select radio button    Gender      F
    sleep    1

    select checkbox    Newsletter

    close browser

*** Keywords ***
