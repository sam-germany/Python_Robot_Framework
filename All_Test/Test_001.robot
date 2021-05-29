*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}  Firefox
${URL}  http://www.thetestingworld.com/testings


*** Test Cases ***
TC_001 Browser Start and Close
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Input Text  name:fld_username  aaaaaaaa
    Input Text  xpath://input[@name='fld_email']  abc@gmail.com
    Clear Element Text  name:fld_username
# For Radio button
    Select Radio Button  add_type  office        # here "add_type" is the grouping-name in the two diffreent Radio Buttons and
                                                 # "office" and "home" are the valuse that we can select through tese Radio buttons
# For Check box
    Select Checkbox  name:terms
# Checking the anchor tag
    Click Link  xpath://a[text()='Read Detail']


#    Close Browser