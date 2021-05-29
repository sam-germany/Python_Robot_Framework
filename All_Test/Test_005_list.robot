*** Settings ***
Library    SeleniumLibrary
Library  SeleniumLibrary
Library  SeleniumLibrary
Library  Collections

*** Variables ***


*** Test Cases ***
MY_test Variables
    ${anyVarName_1}=  set variable  HelloMyWorld      # with this we can create a variable and store value in it
    log to console  ${anyVarName_1}

    @{anyListName}  create list  Hello  22  22.33  World  Abcd1234       # here we are creating the List
    ${getListLength_2}  get length  ${anyListName}                      # here we are getting the length of the List
    log to console  ${getListLength_2}

    ${list_data}=  get from list  ${anyListName}  3          # here we are retriving data as per index number
    log to console  ${list_data}                             # index starts from 0    (zero)

    : FOR  ${i}  IN RANGE  1  10
    \  log to console  ${i}


*** Keywords ***
