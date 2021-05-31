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
TC_001 Login Logout                                       # Video 58
    open browser  ${var1}  Firefox
    maximize browser window

    title should be  Login Sign Up Forms           # here we are validating that the title of the page is same as given or not

    element should be enabled  name:fld_username   # it checks if this field is enabled or not

# Negative case
    element should be disabled  name:fld_username   # it checks that the field is disabled or not


    element should be visible  name:fld_username   # it checks that the element is visible or not

# Negative case
    element should not be visible  name:fld_username   # it checks that the element should not be visible




*** Keywords ***


