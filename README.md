
# _Robot Framework_

Hello Friends, Chai peelooo :smiley:

Just kidding, I was really very curious about Robot Framework and why are IT Companines looking for robot framework.\
"Aisa kya hai Robot Framework mai, jo Selenium cucumber mai nahi",:thinking:
And so I thought lets get our hands dirty why not do a hands on it.
So Here's a repo which will most probably will have all the code for you to practice and see how Robot Framework works.
Coming to the point now.
## Basic concepts of Robot Framework
### Robot Framework
Robot Framework is a generic, Python-based, open-source automation framework. It can be used for test automation and robotic process automation (RPA).
Robot Framework is supported by Robot Framework Foundation. Many industry-leading companies use the tool in their software development.
### What is Robot Framework used for?
Robot Framework is a generic test automation framework for acceptance testing and acceptance test-driven development. It is a keyword-driven testing framework that uses tabular test data syntax.

### What does Robot Framework code look like?

So we have a file with extension .robot, in this file we have 4 sections namely,
- Settings
- Resources
- Variables
- Test Cases
- Keywords
```
***Settings***
Library     SeleniumLibrary

***Variables***
${AppUrl}       https://demoqa.com/automation-practice-form
${browser}      chrome

***Test Cases***
LoginTest
    open browser    ${AppUrl}   ${browser}
    LoginTest Application
    sleep   5
    Close Browser

**Keywords***
LoginTest Application
    Input Text  id:firstName  James
    Input Text  id:lastName  Carter
    Input Text  id:userEmail  CarterJames@gmail.com
```

### What are Libraries?
Robot Framework itself is not built to interact with a specific system and does not have a strictly defined list of functionalities. Instead, it is built to be easily extended to work with any possible target system. These extensions to the framework are called libraries.
The framework itself ships with standard libraries, used to handle common cases. There are many libraries available to cover a variety of situations and systems.
Robocorp maintains a set of libraries that are built specifically to support RPA cases. These libraries form the RPA Framework.

### How do I add a library?
Except for the standard set, libraries come in packages that you have to add before you can use them in your robot. For example, adding the rpaframework package makes all the RPA Framework libraries available to your robot script.

Once you have added a library, you can reference it in the *** Settings *** section of your script, 

### What are Variables?
Instead of writing directly the value of the URL of the website we want the robot to open, we can put that value in a variable.

### What are Test Cases?
Test Cases contains the name of the test case that we will execute and is defined under Keywords.
In our code LoginTest is the name of Test Case and LoginTest Application is the keyword where all functionality related to this test case is defined.

### What are Keywords?
Think of keywords as functions in other programming languages. Keywords are operations that your robot can execute to accomplish various tasks, and are the foundation of any robot script. Keywords can be reused, and they can be composed, which means that you can create keywords by calling other keywords.
Keywords are the building blocks of robots, and libraries will get you more keywords, but a robot does nothing if you don't assign it a Task.
## Installation
You will need python installed in your machine along with a python IDE(better to use Pycharm).
Also we will require selenium,robot-framework,robot-framework selenium library.
To install we will use pip-
```
pip install selenium,
pip install robotframework,
pip install robotframework-seleniumlibrary
pip list  -- to list all the installed packages
```
Note: I'm Still working on this project for somemore changes/enhancement. Your suggestion are most welcomed and appreciated. :)

Thank You\
Happy Coding,\
Learn,Code and Earn\
Stay Safe and Stay Positive :)


