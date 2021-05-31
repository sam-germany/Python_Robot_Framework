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
TC_001 Login Logout                                       # Video 56
    open browser  ${var1}  Firefox
    maximize browser window
    click element  xpath://a[text()="Login']      # here we are clicking on the Login anchor tag and it open the login page

    select checkbox  name:remember                # their is a "checkbox" on this page and we are selecting that check box
    checkbox should be selected  name:remember    # here we are validating that "checkbox" is selected or not

    click element  name:remember                     # here we are again clicking on the selected check box, at this time is will
                                                     # be unselected

    checkbox should not be selected  name:remember   # here we are checking that check box should not be selected at this point






















*** Keywords ***


