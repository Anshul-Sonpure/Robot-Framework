***Settings***
Library     SeleniumLibrary
Library    Collections


***Test Cases***
Perform Refresh Goto and Get Url of application
        open browser    https://www.google.com     chrome
        ${url} =    get location
        log to console  ${url}
        go to   https://www.gmail.com
        ${url} =    get location
        log to console  ${url}
        go back
        ${url} =    get location
        log to console  ${url}
