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
    Start_Browser_and_Maximize_2  ${URL_3}  ${Browser_3}
    Input Text  name:fld_username  AAAAAAA
      




*** Keywords ***


