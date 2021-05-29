*** Settings ***
Library  SeleniumLibrary
Library  Collections

*** Variables ***


*** Test Cases ***
MY_test Variables
    @{anyListName}  create list  Hello  22  22.33  World  Abcd1234       # here we are creating the List

    FOR  ${i}  IN RANGE  1  10
    log to console  ${i}
    END

    FOR  ${i}  IN  @{anyListName}
    log to console  ${i}
    END


*** Keywords ***
