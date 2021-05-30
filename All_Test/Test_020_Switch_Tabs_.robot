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
${var2}  http://www.google.com

*** Test Cases ***
TC_001 Login Logout                                       # Video 53
    open browser  ${var1}  Firefox
    maximize browser window

    click element  //a[text()='robotframework.rog/rpa']    # their is a link on this Robotframework website and as we
                                                          # press on that link then it open a new page in same browser
                                                          # in the next tab

# Case-1 ( when the url or the Title of the page does not change then we can use this approach

    select window  Robot Framework                    # every page has a "title" so we can select tab with a title
    ${url1}=  get location                            # we we can pass directly the url of that tab,here we are passing
    log to console  ${url1}                           # title=Robot Framework    in the "select window" keyword

    select window  Robot Framework RPA
    ${url2}=  get location
    log to console  ${url2}


# Case-2 ( when our url or Title are not stable, in this case we use "window handles" , as every opened tab has a
#          unique number, so with this unique number we can jump to another tab easily )

    @{list_1}  get window handles      # here we are getting the list of numbers of all the opened tabs

    FOR  ${var_33}  IN  @{list_1}     # here we are retriving the numbers of tabs and storing it to a variable
        select window  ${var_33}      # here we are selecting that tab window, means on the screen that window will be shown
        ${url3}=  get location
        log to console  ${url3}
    END





























*** Keywords ***


