*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
TC1
    open browser    https://www.countries-ofthe-world.com/flags-of-the-world.html   chrome
    maximize browser window
#    Execute JavaScript    window.scrollTo(0,7500)
#    scroll element into view    xpath://td[text()='Spain']
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)    #end of the page
    sleep    1
    Execute JavaScript    window.scrollTo(0, -document.body.scrollHeight)    #top of the page
    sleep    1
    close browser


*** Keywords ***