*** Settings ***
Documentation    Vidio.com Login Fitur Web Testing
Library            SeleniumLibrary
Library            Debug Library

*** Variable ***
${email}  kharisediwardana@gmail.com
${password}  zaoldyeck
${vidio_Logo}  xpath://img[@class='vidio-logo__image']
${short_Timeout}  3
${long_Timeout}  20
${login_Button}  xpath://a[@class='header-login__button button-s button-secondary']
${Login}  onboarding-login-form-submit
${email_Bar}  user_login
${password_Bar}  user_password

*** Keyword ***
Open Vidio
    Open Browser  https://Vidio.com  Chrome

Verify Login Button is Loaded
    Wait Until Element is Visible  ${login_Button}  ${short_Timeout}

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

*** Test Cases ***
Make Sure Login Fitur is Work
    Open Vidio
    Verify Login Button is Loaded
    Click Login Button
    Verify Login Page is Loaded
    Input Email and Password
    Click Login
    Verify Login is Success
    Close Browser