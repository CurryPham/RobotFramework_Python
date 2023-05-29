*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
CaptureScreen
    open browser    ${url}  ${browser}
    loginToApplication

#    capture element screenshot    xpath://div[@class='header-logo']//img    D:/Robot/CaptureLogo.png
#    capture page screenshot    D:/Robot/CapturePage.png

    capture element screenshot    xpath://div[@class='header-logo']//img    Logo.png
    capture page screenshot    Page.png

    close browser


*** Keywords ***
loginToApplication
    click link    xpath://a[@class='ico-login']
    input text    id:Email  test@gmail.com
    input text    id:Password  123456
    click element    xpath://button[text()='Log in']