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
TC_001 Login Logout                                       # Video 51
    open browser  ${var1}  Firefox
    maximize browser window               # normall "wait until page contains" keyword waits by default for 5-sec, but as we are
    set selenium timeout  10 seconds      # setting explicitly 10 sec , so in this case is this opening page does not contains
    wait until page contains  VIDEO       # word "VIDEO" then it search for it till 10 sec, if it found immeaditely then it
                                          # execute immeaditely and does not wait for any seconds
                                          # Note: main point is this is appied on the whole page

    wait until page contains element  VIDEO    # normally both "wait until page contains" and "wait until page contains element"
                                               # both are same, main difference is
                                               # "wait until page contains"   it waits for by-default time is 5 sec
                                               # "wait until page contains element"    here no default time is set
                                               # Note: main point is this is applied on that exact element

    wait until element contains  xpath://a[text()='Login']  Login   # it is applied on this specific element,
    click link  xpath://a[text()='Login']                           # if this element contains "Login" then execute further
                                                                    # Click command immideately when it find the "Login"


    wait until element is enabled         # this we will use when a element is Hidden and it takes time to be enabled

    wait until element is visible         # this will wait till the element is visible on the page then execute further

    wait until page does not contain element     # it waits till the the element is removed from the page and only after
                                                 # that it will be executed


*** Keywords ***


