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
Documentation    XXXXXXXXXXXXXX    # we can put any documentation message for this whole file here



*** Variables ***
${Browser_3}  Firefox
${URL_3}  www.facebook.com


*** Test Cases ***
TC_001 Login Logout                                       # Video 63

   [Timeout] 2mins 50s      #   here we are fixing a  time-limit, that this text-case must be completed in 50 seconds
                                        # if this Test-case takes more then 50sec then we will get a error
                                        # we can give only    [Timeout] 50s
                                        #                     [Timeout] 2mins 5s        two minutes and 5 seconds



   ${response}  Start_Browser_and_Maximize_3  ${URL_3}  ${Browser_3}

    Log  ${response}

    Input Text  name:fld_username  ${response}




*** Keywords ***


