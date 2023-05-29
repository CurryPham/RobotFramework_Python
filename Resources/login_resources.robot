*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
LoginTest
    open browser    ${url}  ${browser}
    loginToApplication
    close browser


*** Keywords ***
loginToApplication
    click link    xpath://a[@class='ico-login']
    input text    id:Email  test@gmail.com
    input text    id:Password  123456
    click element    xpath://button[text()='Log in']