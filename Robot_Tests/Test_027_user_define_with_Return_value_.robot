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

*** Variables ***
${Browser_3}  Firefox
${URL_3}  www.facebook.com


*** Test Cases ***
TC_001 Login Logout                                       # Video 59
   ${response}  Start_Browser_and_Maximize_3  ${URL_3}  ${Browser_3}    # here we are storing the response that comes
                                                                        # from   "Resourse\Resources_1.robot"   file
    Log  ${response}

    Input Text  name:fld_username  ${response}   # here whatever the response comes that we are putting in the
                                                 # "name"    field




*** Keywords ***


