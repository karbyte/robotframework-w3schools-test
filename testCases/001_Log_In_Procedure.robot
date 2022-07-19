*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/common.robot

Test Setup  Open browser, maximize browser window & close cookie pop-up
Test Teardown  Sleep & Close Browser

*** Test Cases ***
testcase_001_Open_browser_and_log_in_user_account
    Logging in with credentials & performing credentials check  Email=${UserEmail}   Password=${UserPassword}