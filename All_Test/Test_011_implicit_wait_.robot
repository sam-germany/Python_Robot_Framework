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


*** Test Cases ***
MY_test Variables
    open browser    http://www.thetestingworld.com/testings    Firefox
    maximize browser window
    ${default_T}=  get selenium implicit wait
    log to console  ${default_T}                 # here will get 0 (zero) as output, because defualt wait time is 0 zero

#    set selenium implicit wait 20 seconds          # here we are putting a implicit wait time for 20 seconds
    input text  name:fld_username  AAAAAAA          # as the cursor will search first these tags "name:fld_username"
    input text  name:fld_email  BBBBBBBBB           # if it does not found any tag the immeaditely it return error
    input text  name:fld_password  CCCCCCCCC        # but as we put a "implicit wait" then it wait till 20 sec
                                                    # before throwing a error, if it find the tag then it will not
                                                    # wait for 20 sec


*** Keywords ***
