*** Settings ***
Documentation  This is Vidio Sign Up Fitur Web Testing
Library      SeleniumLibrary
Resource    ../Page/_ImportPage.robot

*** Test Cases ***
Make Sure Sign Up Fitur is Work
    Open Browser    https://Vidio.com  Chrome
    HomePage.Verify Login Button is Loaded
    HomePage.Click Login Button
    LoginPage.Verify Signup Button is Loaded
    LoginPage.Click Signup
    registerPage.Verify Register Page is Loaded
    registerPage.Input Register Email and Password
    registerPage.Check Password Visibility
    registerPage.Click Register Button
    registerPage.Verify Register is Success
    registerPage.Input Name 
    registerPage.Choose Year of Birth 
    registerPage.Choose Age 
    registerPage.Choose Gender 
    registerPage.Click Sumbit 
    Close Browser