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

*** Keyword ***
Verify Login Page is Loaded
    Wait Until Element is Visible  id=onboarding-login-form-submit

Input Email and Password
    Input Text  ${email_Bar}  ${email}
    Input Text  ${password_Bar}  ${password}

Click Login
    Click Element  ${Login}

Verify Login is Success
    Wait Until Element is Visible  ${vidio_Logo}  ${short_Timeout}