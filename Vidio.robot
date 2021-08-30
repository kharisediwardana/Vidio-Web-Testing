*** Settings ***
Documentation  This is vidio.com web testing
Library        SeleniumLibrary
Library        Debug Library

*** Variables ***
${email}  kharisediwardana@gmail.com
${password}  zaoldyeck
${vidio_Logo}  xpath://img[@class='vidio-logo__image']
${short_Timeout}  3
${long_Timeout}  20
${search_Bar}  q
${login_Button}  xpath://a[@class='header-login__button button-s button-secondary']
${search_Button}  xpath://i[@class='icon__search']
${search_Result}  xpath://span[@class='red-bright-bold']
${Login}  onboarding-login-form-submit
${email_Bar}  user_login
${password_Bar}  user_password
#This is Variable of Video Player Fiturs
${video_Button}  xpath://img[@alt='I HEAR(T) YOU']
${video_Start}  xpath://img[@alt='I HEAR(T) YOU']
${play_Button}  xpath://button[@class='vjs-big-pause-button vjs-big-button']

*** Keywords ***
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

Click Login Button
    Click Element  ${login_Button}

Verify Login Page is Loaded
    Wait Until Element is Visible  id=onboarding-login-form-submit

Input Email and Password
    Input Text  ${email_Bar}  ${email}
    Input Text  ${password_Bar}  ${password}

Click Login
    Click Element  ${Login}

Verify Login is Success
    Wait Until Element is Visible  ${vidio_Logo}  ${short_Timeout}

#This is Keyword of Video Player Fitur
Click Video Button
    Click Element  ${video_Button}

Verify Video Page is Loaded
    Wait Until Element is Visible  ${video_Start}  ${short_Timeout}

Click Video Start
    Click Element  ${video_Start}

Verify Play Button is Loaded
    Wait Until Element is Visible  ${play_Button}  ${long_Timeout}

*** Test Cases ***
Make Sure Vidio Home Page is Loaded   
    Open Vidio
    Verify Home Page is Loaded
    Verify Search Bar is Loaded
    Close Browser

Make Sure Search Item Equal with Search Result
    Open Vidio
    Verify Search Bar is Loaded
    Click Search Bar
    Input Text on Search Bar    Sherina
    Click Search Button
    Verify Search Fitur is Loaded
    Close Browser

Make Sure Login Fitur is Work
    Open Vidio
    Verify Login Button is Loaded
    Click Login Button
    Verify Login Page is Loaded
    Input Email and Password
    Click Login
    Verify Login is Success
    Close Browser

Make Sure Video Player is Working Correctly
    Open Vidio
    Click Video Button
    Verify Video Page is Loaded
    Click Video Start
    Verify Play Button is Loaded
    Close Browser

