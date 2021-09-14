*** Variable ***
${short_Timeout}  3
${long_Timeout}  20
${start_Button}  xpath://img[@alt='SERIGALA TERAKHIR']

*** Keywords ***
Verify Start Watching is Loaded
    Wait Until Element is Visible  ${start_Button}  ${long_Timeout}

Click Start Watching
    Click Element  ${start_Button}