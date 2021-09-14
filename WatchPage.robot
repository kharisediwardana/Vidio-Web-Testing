*** Variable ***
${ad_Sense}  vod-player_ima-countdown-div
${play_Button}  xpath://button[@class='vjs-big-pause-button vjs-big-button']
${forward_Button}  xpath://button[@class='vjs-big-navigation-button vjs-big-forward-button vjs-big-button']
${backward_Button}  xpath://button[@class='vjs-big-navigation-button vjs-big-backward-button vjs-big-button']
${mute_Button}  class:vjs-volume-menu-button vjs-vp-volume-menu-button vjs-mute-control vjs-control vjs-button vjs-vol-0
${volume_Bar}  xpath://div[@class='vjs-volume-slider']
${fullscreen_Button}  xpath://button[@title='Fullscreen']


*** Keywords ***
Verify Advertise is Disappear
    Wait Until Element is Not Visible  ${ad_Sense}  ${long_Timeout}

Verify Play Button is Loaded
    Wait Until Element is Visible  ${play_Button}  ${long_Timeout}

Click Play Button
    Click Button  ${play_Button}

Click Fullscreen Button
    Click Button  ${fullscreen_Button}

Click Backward Button
    Click Element  ${backward_Button}

Click Forward Button
    Click Element  ${forward_Button}

Click Mute Button
    Click Element  ${mute_Button}

Verify Volume Bar is Loaded
    Wait Until Element is Visible  ${volume_Bar}  ${short_Timeout}