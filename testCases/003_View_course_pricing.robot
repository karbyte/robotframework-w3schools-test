*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/common.robot

Test Setup  Open browser, maximize browser window & close cookie pop-up
Test Teardown  Sleep & Close Browser

*** Test Cases ***
testcase_003_Viewing_course_pricing
    Logging in with credentials & performing credentials check  Email=${UserEmail}   Password=${UserPassword}
    Search for a specific course  Keyword=${CourseKeyword}
    Opening pricing tab & check enroll button