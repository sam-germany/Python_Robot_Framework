*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}  Firefox
${URL}  https:www.facebook.com/


*** Test Cases ***
TC_001 Browser Start and Close
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Input Text  id:email  hello
    Input Text  id:pass  Abod
    Click  Button  xpath://button[@type='submit']        # with this we can press the button

# Checking the anchor tag
    Click Link  xpath://a[text()='Read Detail']       # we use "text()" to match the InnerText


#    Close Browser