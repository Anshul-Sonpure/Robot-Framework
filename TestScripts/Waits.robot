"""There are three types of wait that can be used for synchronizing the speed of Automation
1. Selenium Speed => will be applicable for all steps & will execute after the time delay provided.
2. Conditional Wait => will be applicable for any particular condition to be met
default time is 5 seconds
3. Implicit Wait => applicable for WebElement to be visible and interactable.
"""
***Settings***
Library     SeleniumLibrary


***Variables***
${AppUrl}   https://www.techlistic.com/p/selenium-practice-form.html
${browser}  chrome

***Test Cases***
Demo for Waits
    open browser    ${AppUrl}   ${browser}
    maximize browser window
    wait until page contains    AUTOMATION PRACTICE ME   #applicable for page to load
    set selenium speed  1 seconds       #applicable for all web Elements
    #Select Automation Tools
    select CheckBox     Selenium Webdriver
    #Select Value from DropDown first Australia and then Asia
    select from list by label   continents  Australia
    select from list by label   continents  Asia
    #Select Value from DropDown Selenium Commands
    select from list by label   selenium_commands   Browser Commands
    select from list by label   selenium_commands   WebElement Commands
    set selenium Implicit wait  4 seconds
    close all browsers
Demo for Waits Fail
    open browser    ${AppUrl}   ${browser}
    maximize browser window
    wait until page contains    Selenium   #This test will fail as Selenium is not present in page