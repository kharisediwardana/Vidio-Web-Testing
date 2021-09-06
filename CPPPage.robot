*** Variable ***
${cpp_Portrait}  xpath://img[@alt='I HEAR(T) YOU']
${watch_Button}  xpath://div[@class='profile-info__button-action--placeholder js-api-component']

*** Keywords ***
Verify CPP is Loaded
    Wait Until Element is Visible  ${cpp_Portrait}  ${long_Timeout}

Verify Watch Button is Loaded
    Wait Until Element is Visible  ${watch_Button}  10

Click Watch Button
    Click Element    ${watch_Button}