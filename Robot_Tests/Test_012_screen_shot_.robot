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
    capture page screenshot  S:/001_My_Space/92_Workspace/27_Python/004/images_1/pic.png  # here we are capturing the screenshot
                                                                                         # and save it to the given folder
                                                                           #Note: we have to put Forward Slash "/"
*** Keywords ***
