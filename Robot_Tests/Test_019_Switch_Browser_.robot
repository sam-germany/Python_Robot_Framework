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
${var2}  http://www.google.com

*** Test Cases ***
TC_001 Login Logout                                       # Video 52
    open browser  ${var1}  Firefox
    maximize browser window
    open browser  ${var2}  Firefox
    maximize browser window                 # till this position we have two browsers are open
                                            # first bowser is    1= http://www.thetestingworld.com
                                            # second browser is  2= http://www.google.com

    switch browser  1                       # here index starts from  1  not from 0 (zero)
    ${url_1}=  get location                 # "switch browser" we are taking the control of first browser
    lot to console  ${url_1}
     click element  xpath://a[text()='Login']    # here we are doing some task on this browser



    switch browser  2                       # here we are switching the control from   browser 1 to browser 2
    ${url_2}=  get location
    log to console  ${url_2}
    input text  name:q  AAAAAAAAA           # here we are doing some task on this browser


    close all browsers                      # at the end we will close all the browsers

#Note: main point is that it will open a completely seperate browser, not in one browser window and multiple tabs,


*** Keywords ***


