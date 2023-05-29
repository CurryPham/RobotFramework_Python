*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
LoginTest
#Right click/open context menu
    open browser    https://swisnl.github.io/jQuery-contextMenu/demo.html  chrome
    maximize browser window
    open context menu    xpath://span[@class='context-menu-one btn btn-neutral']
    sleep    1

    #Double click get action
    go to    https://testautomationpractice.blogspot.com/
    maximize browser window
    double click element    xpath://button[contains(text(),'Copy Text')]
    sleep    1

    #drag and drop
    go to    http://dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    drag and drop    id:box6    id:box106
    sleep    1

    close browser


*** Keywords ***