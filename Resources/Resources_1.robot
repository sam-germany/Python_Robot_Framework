*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${URL_1}  http://www.thetestingworkd.com/testings
${Browser_1}  Firefox

*** Keywords ***
Start_Browser_and_Maximize_1
    Open Browser  ${URL_1}  ${Browser_1}
    Maximize Browser Window



Start_Browser_and_Maximize_2
    [Documentation]  we can put any message about this method     # this is just for the documentation, that for which purpose this method is

    [Arguments]  ${URL_2}  ${Browser_2}
    Open Browser  ${URL_2}  ${Browser_2}
    Maximize Browser Window


Start_Browser_and_Maximize_3
    [Arguments]  ${URL_2}  ${Browser_2}
    [Timeout]    2mins 5s                          # here in this user-defined-keyword we are defining the Time-out    also
    Open Browser  ${URL_2}  ${Browser_2}
    Maximize Browser Window
    ${Title_1}=  Get Title
    [return]  ${Title_1}

Start_Browser_and_Maximize_4
    Open Browser  https:facebook.de  Firefox
    Maximize Browser window


Close_Browser_Window
    ${Title_1}=  Get Title
    Log  ${Title}
    Close Browser


Before_Each_Test_Suite_33
    Log  Before Each Test Suite


After_Each_Test_Suite_33
    Log  After Each Test Suite