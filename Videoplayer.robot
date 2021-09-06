*** Settings ***
Documentation    This is Vidio.com video player web testing
Library            SeleniumLibrary
Resource           ../page/_ImportPage.robot

*** Keyword ***
Open Vidio
    Open Browser  https://Vidio.com  Chrome

*** Test Cases ***
Make Sure Video Player is Working Correctly
    Open Vidio
    HomePage.Click Content Portrait
    CPPPage.Verify CPP is Loaded
    CPPPage.Verify Watch Button is Loaded
    CPPPage.Click Watch Button
    WatchPage.Verify Advertise is Disappear
    Close Browser