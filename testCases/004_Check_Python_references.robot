*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/common.robot

Test Setup  Open browser, maximize browser window & close cookie pop-up
Test Teardown  Sleep & Close Browser

*** Test Cases ***
testcase_004_Checking_Python_references_and_choosing_built-in_functions
    Logging in with credentials & performing credentials check  Email=${UserEmail}   Password=${UserPassword}
    Choosing references tab
    Choosing Python references tab
    Choose a specific built-in function overview