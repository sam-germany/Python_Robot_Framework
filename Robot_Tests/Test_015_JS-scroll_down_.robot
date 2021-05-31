*** Settings ***
Library    SeleniumLibrary
Library  SeleniumLibrary
Library  SeleniumLibrary
Library  Collections
Library  SeleniumLibrary
Library  Collections
Library  SeleniumLibrary
Library  Collections

*** Variables ***
${var1}  http://www.thetestingworld.com

*** Test Cases ***
TC_001 Login Logout
    open browser  ${var1}  Firefox
    maximize browser window
    execute javascript  window.scrollTo(0,1000)    # here    (0,1000) are the pixels that how much we want to
    sleep  10 seconds                              # to scroll left or down

*** Keywords ***


