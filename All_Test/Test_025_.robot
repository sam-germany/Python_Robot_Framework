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
${Browser_1}  Firefox
${var1}  http://www.thetestingworld.com



*** Test Cases ***
TC_001 Login Logout                                       # Video 59
    Open Browser  ${var1}  ${Browser_1}
    Maximize Browser Window





*** Keywords ***


