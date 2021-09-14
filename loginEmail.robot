*** Settings ***
Documentation    Vidio.com Login by Email Fitur Web Testing
Library            SeleniumLibrary
Resource           ../Page/_ImportPage.robot

*** Test Cases ***
Make Sure Login Fitur is Work
    Open Browser    https://Vidio.com  Chrome
    HomePage.Verify Login Button is Loaded
    HomePage.Click Login Button
    LoginPage.Verify Login Page is Loaded
    LoginPage.Input Email and Password
    LoginPage.Click Login
    LoginPage.Verify Login is Success
    Close Browser