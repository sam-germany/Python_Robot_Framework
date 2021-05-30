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
${var1}  http://www.thetestingworld.com

*** Test Cases ***
TC_001 Login Logout                                       # Video 50
    open browser  ${var1}  Firefox
    maximize browser window
    click link  xpath://a[text()='Login']                  # Line-1
    press key  name:username  hello                        # Line-2
    press key  xpath://button[@type='submit']  \\13        # Line-3


# Line-1    here we are clicking on the    "Login" button from main page then we it open another page with Login
#
# Line-2
#       normally till now we have done   "Input Text  name:username  hello"
#      "press key  name:username  hello"    <-- but here we use this syntex, so first it make click on the Input field
#                                             then write "hello" on it
#
# Line-3)  "press key  xpath://button[@type='submit']  \\13"      after doing the above input operation now we want to
#                                                              press "Submit" or press Enter from the keyboard, for pressing
#                                         Enter from keyboard we have to use    ASCII vlaue of the Enter key
#                                         ASCII value of Enter=13    and we have to put two backword slash before it always

*** Keywords ***


