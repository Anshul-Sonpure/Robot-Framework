# In this Test we will see how to interact with different WebUI-Elements #

***Settings***
Library  SeleniumLibrary

***Variables***
${AppUrl}       https://www.techlistic.com/p/selenium-practice-form.html
${browser}      chrome

***Test Cases***
Testing Input Text
    open browser    ${AppUrl}   ${browser}
    maximize browser window
    set selenium speed  0.5 seconds
    Input Text  name:firstname  Tommy
    Input Text  name:lastname     Carter
    Input Text  id:datepicker    09/08/1982
    #Selecting Female Radio Button
    select Radio Button     sex  Female
    select Radio Button     exp  5
    #Select CheckBox Manual Tester and Uncheck and check Automation Tester
    select CheckBox     Manual Tester
    sleep   1
    select CheckBox     Automation Tester
    unselect CheckBox   Manual Tester
    #Select Automation Tools

    select CheckBox     Selenium Webdriver
    #Select Value from DropDown first Australia and then Asia

    select from list by label   continents  Australia
    select from list by label   continents  Asia

    #Select Value from DropDown Selenium Commands
    select from list by label   selenium_commands   Browser Commands
    select from list by label   selenium_commands   WebElement Commands
    close all browsers
