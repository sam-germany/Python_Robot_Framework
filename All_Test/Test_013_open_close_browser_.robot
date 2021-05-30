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

    input text  name:fld_username  AAAAAAA
    input text  name:fld_email  BBBBBBBBB
    input text  name:fld_password  CCCCCCCCC
    open browser  https://www.google.com  Firefox        # at point of the script it will open google.com
    close all browsers                                   # at the end all the browser will be closed, only those browser
                                                       # will be closed those are opened by this script, if other browsers
                                                      # are their they will not be closed
*** Keywords ***


