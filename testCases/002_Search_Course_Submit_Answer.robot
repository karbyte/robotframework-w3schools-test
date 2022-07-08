*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/common.robot

*** Variables ***
${URL}  https://www.w3schools.com
${Browser}  Chrome

*** Test Cases ***
case_002 Search for a Python course & submit an answer to a quest
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window and Accept Cookie
    Log In Procedure
    Sleep  3s
    Search for a Course
    Sleep & Close Browser