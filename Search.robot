*** Settings ***
Documentation          Vidio.com search fitur testing
Library                SeleniumLibrary     
Library                Debug Library

*** Variable ***
${vidio_Logo}  xpath://img[@class='vidio-logo__image']
${short_Timeout}  3
${long_Timeout}  20
${search_Bar}  q
${login_Button}  xpath://a[@class='header-login__button button-s button-secondary']
${search_Button}  xpath://i[@class='icon__search']
${search_Result}  xpath://span[@class='red-bright-bold']

*** Keyword ***
Open Vidio
    Open Browser  https://Vidio.com  Chrome

Verify Home Page is Loaded
    Wait Until Element is Visible  ${vidio_Logo}   ${short_Timeout} 

Verify Search Bar is Loaded
    Wait Until Element is Visible  id=${search_Bar}  ${short_Timeout}

Verify Login Button is Loaded
    Wait Until Element is Visible  ${login_Button}  ${short_Timeout}

CLick Search Bar
    Click Element    id=${search_Bar}

Input Text on Search Bar
    [Arguments]  ${selector}
    Input Text    id=${search_Bar}  ${selector}

Click Search Button
    Click Element  ${search_Button}

Verify Search Fitur is Loaded
    Wait Until Element is Visible  ${search_Result}  ${short_Timeout}

*** Test Cases ***
Make Sure Search Item Equal with Search Result
    Open Vidio
    Verify Search Bar is Loaded
    Click Search Bar
    Input Text on Search Bar    Sherina
    Click Search Button
    Verify Search Fitur is Loaded
    Close Browser
