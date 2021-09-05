*** Settings ***
Documentation    This is Vidio.com video player web testing
Library            SeleniumLibrary

*** Variable ***
${short_Timeout}  3
${long_Timeout}  20
${video_Button}  xpath://img[@alt='I HEAR(T) YOU']
${video_Start}  xpath://img[@alt='I HEAR(T) YOU']
${play_Button}  xpath://button[@class='vjs-big-pause-button vjs-big-button']
${forward_Button}  xpath://button[@class='vjs-big-navigation-button vjs-big-forward-button vjs-big-button']
${backward_Button}  xpath://button[@class='vjs-big-navigation-button vjs-big-backward-button vjs-big-button']
${mute_Button}  class:vjs-volume-menu-button vjs-vp-volume-menu-button vjs-mute-control vjs-control vjs-button vjs-vol-0
${volume_Bar}  xpath://div[@class='vjs-volume-slider']
${fullscreen_Button}  xpath://button[@title='Fullscreen']
${ad_Sense}  vod-player_ima-countdown-div

*** Keyword ***
Open Vidio
    Open Browser  https://Vidio.com  Chrome

Verify Home Page is Loaded
    Wait Until Element is Visible  ${vidio_Logo}   ${short_Timeout} 

Click Video Button
    Click Element  ${video_Button}

Verify Video Page is Loaded
    Wait Until Element is Visible  ${video_Start}  ${long_Timeout}

Click Video Start
    Click Element  ${video_Start}

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

*** Test Cases ***
Make Sure Video Player is Working Correctly
    Open Vidio
    Click Video Button
    Verify Video Page is Loaded
    Click Video Start
    Verify Advertise is Disappear
    Verify Play Button is Loaded
    Click Play Button
    Click Fullscreen Button
    Close Browser