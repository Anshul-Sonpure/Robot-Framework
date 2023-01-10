***Settings***
Library     SeleniumLibrary
Library    Collections

***Variables***
${AppUrl}       https://the-internet.herokuapp.com/windows
${browser}      chrome

****** Test Cases ***
Tabbed Window
        open browser    ${AppUrl}   ${browser}
        maximize browser window
        Switch Window   title=The Internet
        click element      xpath://a[contains(text(),'Click Here')]
        sleep   3
        close all browsers

MultiBrowser Window
        open browser        https://the-internet.herokuapp.com/    chrome
        open browser        https://the-internet.herokuapp.com/inputs      chrome
        switch browser    1
        ${page_title1}=    Get Title
        log to console  ${page_title1}
        switch browser    2
        ${page_title2}=    Get Title
        log to console  ${page_title2}
        sleep   3
        close all browsers
