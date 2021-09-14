*** Settings ***
Documentation          Vidio.com search fitur testing
Library                SeleniumLibrary     
Resource                ../Page/_ImportPage.robot

*** Test Cases ***
Make Sure Search Item Equal with Search Result
    Open Browser    https://Vidio.com  Chrome
    HomePage.Verify Search Bar is Loaded
    HomePage.Click Search Bar
    HomePage.Input Text on Search Bar    Sherina
    HomePage.Click Search Button
    SearchPage.Verify Search Fitur is Loaded
    Close Browser
