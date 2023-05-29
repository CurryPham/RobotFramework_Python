*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
LoginTest
    open browser    ${url}  ${browser}
    maximize browser window
    ${AllLinkCount}=    get element count    xpath://a
    log to console    ${AllLinkCount}

    @{LinkItems}    create list
    FOR    ${i}     IN RANGE    1   ${AllLinkCount}+1
    ${LinkTest}=    get text    xpath:(//a)[${i}]
    log to console  ${LinkTest}
    close browser


*** Keywords ***
loginToApplication
    click link    xpath://a[@class='ico-login']
    input text    id:Email  test@gmail.com
    input text    id:Password  123456
    click element    xpath://button[text()='Log in']