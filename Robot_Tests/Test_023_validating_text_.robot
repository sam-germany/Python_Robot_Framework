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
TC_001 Login Logout                                       # Video 57
    open browser  ${var1}  Firefox
    maximize browser window

# Case-1
    element text should be  xpath://div[@id='tab-content1']/p  AAAAAAAAAA    # here we are validating that this "p" tag contains this
                                                                             # "AAAAAAA" text or not, if yes then execute further lines
    input text  name:fld_username  BBBBBB


# Case-2 (negative case)
    element text should not be  xpath://div[@id='tab-content1']/p  AAAAAAAAAA    # here we are validating that this "p" tag should not
                                                                                 # contains this text, if it not contain this text then
                                                                                 # cursor will move forward and execute further lines


# Case-3 ( vaidating Partial text)
    element should contain  xpath://div[@id='tab-content1']/p  apple     # this checks only partial data, if the whole text contains "apple" or not





*** Keywords ***


