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
    open browser  ${var1}  Firefox        # as in the begining it is opening    http://www.thetestingworld.com
    got to  https://www.google.com        # then here we are changing the websie to google.com
    go back                               # now here we are again going back to  http://www.thetestingworld.com

                                        # Note: these are same as go-forward or go-back    buttons on the top left side
    ${URL-1}=  get location
    log to console  ${URL-1}      # here it is printing the current url that is opened in the browser
*** Keywords ***


