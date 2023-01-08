# In this we will test how to open browser and handle Alert and Popups #

***Settings***
Library     SeleniumLibrary


***Variables***
${HandleAppUrl}       https://the-internet.herokuapp.com/javascript_alerts
${browser}              chrome
${IFrameAppUrl}     https://ui.vision/demo/webtest/frames



***Test Cases***
Launch Application
    open browser    ${HandleAppUrl}   ${browser}
    maximize browser window
    sleep  5
    Handle Alerts
    open browser    ${IFrameAppUrl}   ${browser}
    maximize browser window
    Handle IFrames

****** Keywords ***
Handle Alerts
    click element  xpath://button[contains(text(),'Click for JS Alert')]
    sleep   3
    handle alert       accept       #accept keyword will click on OK button
    sleep   3
    click element  xpath://button[contains(text(),'Click for JS Confirm')]
    sleep   3
    handle alert        accept      #accept keyword will click on OK button
    click element  xpath://button[contains(text(),'Click for JS Confirm')]
    sleep   3
    handle alert        dismiss      #dismiss keyword will click on Cancel button
    #handle alert   leave  -- NO action will be done on Alert
    #To validate Message present on Alert
    click element  xpath://button[contains(text(),'Click for JS Confirm')]
    alert should be present     I am a JS Confirm

Handle IFrames
        select frame    xpath:/html/frameset/frame[1]
        sleep       3
        input text      //input[@name='mytext1']    Text in Frame1
        unselect frame      #unselect the frame so that we can select next frame
        select frame    xpath:/html/frameset/frameset/frame[1]
        sleep       3
        input text      //input[@name='mytext2']    Text in Frame2
        unselect frame
        select frame    xpath:/html/frameset/frameset/frame[3]
        sleep       3
        input text      //input[@name='mytext4']    Text in Frame4
        sleep   3