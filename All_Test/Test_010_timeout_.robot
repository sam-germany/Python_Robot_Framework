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
#    set selenium timeout  20 seconds
#    ${var_1}=  get selenium timeout
#    log to console  ${var_1}
    wait until page contains  Tesing_11            # "wait" command in this case check the whole page   of the given websie
    input text  name:fld_username  AAAAAAA      # http://www.thetestingworld.com/testings     <-- it checks if this whole
    input text  name:fld_email  BBBBBBBBB       # page containg word "Testing_11"    if it contains then the test PASS
    input text  name:fld_password  CCCCCCCCC      # and it executes further, if the page does not contain this word then
                                               # test fails, By-deafult it wait for 5 seconds , but we can change the
                                               # waiting time with the    "set selenium timeout" command


*** Keywords ***
