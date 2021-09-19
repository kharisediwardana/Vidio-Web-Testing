*** Settings ***
Documentation  This is Vidio Login by Facebook Fitur Web Testing
Library      SeleniumLibrary
Resource    ../Page/_ImportPage.robot

*** Test Cases ***
Make Sure Error Message is Appear
    Open Browser    https://Vidio.com  Chrome
    HomePage.Verify Login Button is Loaded
    HomePage.Click Login Button
    LoginPage.Verify Login Page is Loaded
    LoginPage.Input Email and Wrong Password
    LoginPage.Click Login
    LoginPage.Verify Failed Message is Loaded
    Close Browser
