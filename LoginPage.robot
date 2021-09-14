*** Variable ***
${short_Timeout}  3
${long_Timeout}  20
${email}  kharisediwardana@gmail.com
${password}  zaoldyeck
${short_Timeout}  3
${long_Timeout}  20
${Login}  onboarding-login-form-submit
${email_Bar}  user_login
${password_Bar}  user_password
${faceboook_Button}  facebook-login
${continue_Button}  xpath://button[@class='_42ft _4jy0 layerConfirm _1fm0 _9r0v _51_n autofocus _4jy3 _4jy1 selected _51sy']

*** Keyword ***
#Login With Email
Verify Login Page is Loaded
    Wait Until Element is Visible  id=onboarding-login-form-submit

Input Email and Password
    Input Text  ${email_Bar}  ${email}
    Input Text  ${password_Bar}  ${password}

Click Login
    Click Element  ${Login}

Verify Login is Success
    Wait Until Element is Visible  ${vidio_Logo}  ${short_Timeout}

#Login With Facebook
Verify Facebook Button is Loaded  
    Wait Until Element is Visible  ${facebook_Button}  ${short_Timeout}

Click Facebook Button
    Click Element  ${facebook_Button}

Verify Continue Button is Loaded
    Wait Until Element is Visible  ${continue_Button}  ${short_Timeout}

Click Continue Button
    Click Button  ${continue_Button}

