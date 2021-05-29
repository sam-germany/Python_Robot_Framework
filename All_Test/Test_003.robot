*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}  Firefox
${URL}  http://www.thetestingworld.com/testings


*** Test Cases ***
TC_001 Browser Start and Close
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Set Selenium Speed  1seconds
    Select From List By Index  name:sex  2     # 0_th index is    Choose Gender
                                               # 1_st index is    Male
                                               # 2_th index is    Female

    Select From List By Value  name:sex  1     # every option in a List we have defined a value
                                               # for make    value="1"
                                               # for female  value="2"

    Select From List By Label  name:sex  Female    # here label means innerText
                                                   # Female, Male are innerText


#    Close Browser