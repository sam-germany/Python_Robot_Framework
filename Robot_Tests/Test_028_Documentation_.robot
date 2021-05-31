*** Settings ***
Library    SeleniumLibrary
Library  SeleniumLibrary
Library  SeleniumLibrary
Library  Collections
Library  SeleniumLibrary
Library  Collections
Library  SeleniumLibrary
Library  Collections
Library  SeleniumLibrary
Resource  ../Resources/Resources_1.robot
Library  SeleniumLibrary
Documentation    XXXXXXXXXXXXXX    # we can put any documentation message for this whole file here, so any method execute
                                   # this message will be added

test timeout  20s         # as we are adding Timeout a file-level so it will be applied to all the test-cases



*** Variables ***
${Browser_3}  Firefox
${URL_3}  www.facebook.com


*** Test Cases ***
TC_001 Login Logout                                       # Video 62
   [Documentation]    SSSSSSSSSSSSSS    # we can put any message, this message will be displayed in the documentation and
                                        # it will be helpful when other developer will check this code

   ${response}  Start_Browser_and_Maximize_3  ${URL_3}  ${Browser_3}    # here we are storing the response that comes
                                                                        # from   "Resourse\Resources_1.robot"   file
    Log  ${response}

    Input Text  name:fld_username  ${response}   # here whatever the response comes that we are putting in the
                                                 # "name"    field




*** Keywords ***


