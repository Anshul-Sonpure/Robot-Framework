# In this we will test how to open browser and enter text in firstname and lastname #
***Settings***
Library     SeleniumLibrary


***Variables***
${AppUrl}       https://demoqa.com/automation-practice-form
${browser}      chrome


***Test Cases***
LoginTest
    open browser    ${AppUrl}   ${browser}
    maximize browser window
    sleep  5
    LoginTest Application
    sleep   5
    Close Browser


**Keywords***
LoginTest Application
    Input Text  id:firstName  James
    Input Text  id:lastName  Carter
    Input Text  id:userEmail  CarterJames@gmail.com