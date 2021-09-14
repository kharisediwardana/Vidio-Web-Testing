*** Settings ***
Documentation    This is Vidio.com video player web testing
Library            SeleniumLibrary
Resource           ../page/_ImportPage.robot

*** Test Cases ***
Make Sure Video Player is Working Correctly
    Open Browser    https://Vidio.com  Chrome
    HomePage.Verify Content Portrait is Loaded
    HomePage.Click Content Portrait
    CPPPage.Verify Start Watching is Loaded
    CPPPage.Click Start Watching
    WatchPage.Verify Advertise is Disappear
    Close Browser