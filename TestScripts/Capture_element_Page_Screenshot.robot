***Settings***
Library     SeleniumLibrary
Library    Collections


***Test Cases***
Capture WebElement and Page Screenshot
        open browser    https://www.google.com     chrome
        capture element screenshot  xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[4]/center/input[2]  C:/Users/Darkprime/Desktop/Project/RobotFramework_Tutorial/Reports/pic.png
        capture page screenshot     C:/Users/Darkprime/Desktop/Project/RobotFramework_Tutorial/Reports/pic2.png 