*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/common.robot

*** Variables ***
${URL}  https://www.w3schools.com
${Browser}  Chrome


*** Test Cases ***
case_001 Login procedure
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window and Accept Cookie
    Log In Procedure
    Sleep & Close Browser