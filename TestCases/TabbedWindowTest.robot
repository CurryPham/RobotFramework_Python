*** Settings ***
Library    SeleniumLibrary
Library    SeleniumLibrary
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Tabbed Browser
    open browser    https://testautomationpractice.blogspot.com/    chrome
    maximize browser window
    click element    xpath://*[@id="Tabbed"]/a/button
    switch window    title=Sakinalium  | Home
    click element    xpath://*[@id="Tabbed"]/a/button
    sleep    1
    close all browsers


*** Keywords ***