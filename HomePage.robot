*** Settings ***
Library    SeleniumLibrary
Resource    ../Page/_ImportPage.robot

*** Variable ***
${short_Timeout}  3
${long_Timeout}  20
${vidio_Logo}  xpath://img[@class='vidio-logo__image']
${search_Bar}  q
${search_Button}  xpath://i[@class='icon__search']
${content_Portrait}  xpath://img[@alt='I HEAR(T) YOU']
${login_Button}  xpath://a[@class='header-login__button button-s button-secondary']


*** Keywords ***
Verify Home Page is Loaded
    Wait Until Element is Visible  ${vidio_Logo}   ${short_Timeout} 

Verify Search Bar is Loaded
    Wait Until Element is Visible  id=${search_Bar}  ${short_Timeout}

Click Search Bar
    Click Element    id=${search_Bar}

Click Content Portrait
    Click Element  ${content_Portrait}

Verify Login Button is Loaded
    Wait Until Element is Visible  ${login_Button}  ${short_Timeout}

Click Login Button
    Click Element  ${login_Button}

Input Text on Search Bar
    [Arguments]  ${selector}
    Input Text    id=${search_Bar}  ${selector}

Click Search Button
    Click Element  ${search_Button}