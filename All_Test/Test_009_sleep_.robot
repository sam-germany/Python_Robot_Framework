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

    sleep 10 seconds                           # this is old syntex it is not working
    input text  name:fld_username  AAAAAAA     # main purpose is that we at line 18 cursor will wait till 10 second
    input text  name:fld_email  BBBBBBBBB      # after 10 seconds it will execute below lines
    input text  name:fld_password  CCCCCCCCC
    get
*** Keywords ***
