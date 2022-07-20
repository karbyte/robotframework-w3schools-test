*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/common.robot

Test Setup  Open browser, maximize browser window & close cookie pop-up
Test Teardown  Sleep & Close Browser

*** Test Cases ***
testcase_005_Rolling_a_python_exercise_and_starting_it
    Logging in with credentials & performing credentials check  Email=${UserEmail}   Password=${UserPassword}
    Getting to homepage
    Expanding Exercises tab
    Choosing Python Exercises
    Setting focus & starting Python Exercises