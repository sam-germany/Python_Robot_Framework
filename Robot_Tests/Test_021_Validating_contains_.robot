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
TC_001 Login Logout                                       # Video 54
    open browser  ${var1}  Firefox
    maximize browser window

# Case-1
    page should contain  VIDEOS                   # here we are checking that the page contains "VIDEO" word or not
    click element  xpath://a[text()='Login']        # this line will only be executed when line 20    get the "VIDEO" word

# Case-2
    click element  xpath://a[text()='Login']        # first we are clicking on the Login link and it open new Login page
    page should contain textfield  name:username    # in this new page we are checking that field is their or not "name:username"
    input text  name:username  AAAAAAAAA            # if it found the above field then this line will be executed further

# Case-3 ( negative synerio)
    click element  xpath://a[text()='Login']        # first we are clicking on the Login link and it open new Login page
    page should not contain textfield  name:username    # in this new page we are checking that field must not be their "name:username"
    input text  name:username  AAAAAAAAA            # if it found the above field then this line will not be executed further

























*** Keywords ***


