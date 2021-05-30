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
TC_001 Login Logout                                       # Video 49
    open browser  ${var1}  Firefox
    maximize browser window
    open context menu  xpath://span[contains(text(),'VIDEOS')]    # when we go to a websete and    click on the
                                                                  # the dropdown list, to open these dropdown list
                                                               # we have to use "open context menu"    keyword

    double click element  xpath://a[text()='Login']   # if their is a Anchor tag on the websie that we want to open
                                                      # with the mouse click then we have to use this way

                                             # what is a click ? <-- a click is a combination of one time press mouse
                                             # button and after that release that mouse button, so we can say one time
                                      # "mouse down" and one time "mouse up" on the same content is one Click of mouse

    mouse down  xpath://a[text()='Login']    # with "mouse down"  we are pressing the mouse on the Login button
    mouse up  xpath://a[text()='Login']      # with "mouse up"   we are releasing the mouse on the same Login button


    mouse over  xpath://span[contains(text(),'VIDEOS')]  # sometime when we just take the mouse on a Button then it
                                                         # automatically open the menu for that Button, even we do not
                                                        # click on the mouse button, for this function we need "mouse over"

*** Keywords ***


