*** Variable ***
${short_Timeout}  3
${search_Result}  xpath://span[@class='red-bright-bold']

*** Keywords ***
Verify Search Fitur is Loaded
    Wait Until Element is Visible  ${search_Result}  ${short_Timeout}
