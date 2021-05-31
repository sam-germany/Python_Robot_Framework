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


*** Test Cases ***
MY_test Variables
    ${var_1}=  set variable  log to console      # "log to console" is a keyword and here we are storing
    run keyword  ${var_1}  AAAAAAAAAAAAA         # a keyword into a variable and after that passing that
                                                 # value    "abc@gmail.com" to that variable and print it

My_Test case 2
    ${var_2}=  set variable  YES                          # here we are using if condition
    run keyword if  '${var_2}'=='YES'  log to console  YYYYYYYY
    run keyword if  '${var_2}'=='NO'  log to console  NNNNNNNN

*** Keywords ***
