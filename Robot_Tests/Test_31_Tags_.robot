*** Settings ***

Resource  ../Resources/Resources_1.robot
Library  SeleniumLibrary
Documentation    XXXXXXXXXXXXXX


*** Variables ***
${Browser_3}  Firefox
${URL_3}  www.facebook.com


*** Test Cases ***
Robot_First_Test_Case                                       # Video 68

    [Tags]  Case_1                      # with this Tag at the time of execution we can configer with the Tag name
                                        # that in this class only this method will be called. see video 68

    Input Text  name:fld_username  AAAAAA
    Input Text  name:fld_email  aaa@gmail.com
    Input Text  name:fld_password  12345


Robot_First_Test_Case                                       # Video 68

    [Tags]  Case_2               # this tag we can

    Input Text  name:fld_username  AAAAAA
    Input Text  name:fld_email  aaa@gmail.com
    Input Text  name:fld_password  12345




*** Keywords ***


