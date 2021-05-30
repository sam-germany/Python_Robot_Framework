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
    ${speed_value_1}=  get selenium speed
    log to console  ${speed_value_1}

    open browser    http://www.thetestingworld.com/testings    Firefox
    maximize browser window
#    Set Selenium Speed 2 seconds                    # this will give error, this is a old syntex
    input text  name:fld_username  AAAAAAA           # with "Speed" keyword we can set a delay in between execution of
    input text  name:fld_email  BBBBBBBBB            # of every line, here we are setting "Speed" at line 21
    input text  name:fld_password  CCCCCCCCC         # so after line 21 all the lines will have execution delay of 2 second
    ${speed_value_1}=  get selenium speed            # Default speed is    0 (zero) seconds, so it will not wait for anything
    log to console  ${speed_value_1}

*** Keywords ***
