*** Settings ***

Resource  ../Resources/Resources_1.robot
Library  SeleniumLibrary
Documentation    XXXXXXXXXXXXXX

Suite Setup  Before_Each_Test_Suite_33     # the code i wrote in the "Rosource_1.robot" file their is this tag
                                           # as we wrote here as a class level, so it will execute before all the methods will executes

Suite Teardown  After_Each_Test_Suite_33    # this code i wrote in the "Resource_1.robot" file, as it is a Teardown code
                                            # so it will be executed after every thing will be executed in this file

*** Variables ***
${Browser_3}  Firefox
${URL_3}  www.facebook.com


*** Test Cases ***
TC_001 Login Logout                                       # Video 67

    Input Text  name:fld_username  AAAAAA
    Input Text  name:fld_email  aaa@gmail.com
    Input Text  name:fld_password  12345




*** Keywords ***


