*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/common.robot

Test Setup  Open browser, maximize browser window & close cookie pop-up
Test Teardown  Sleep & Close Browser

*** Test Cases ***
testcase_002_Search_for_a_course
    Logging in with credentials & performing credentials check
    Search for a specific course