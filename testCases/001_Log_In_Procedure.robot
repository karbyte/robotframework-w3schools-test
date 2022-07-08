*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/common.robot

*** Variables ***
${URL}  https://www.w3schools.com
${Browser}  Chrome
${LogInButton}  //*[@id="w3loginbtn"]
${EmailField}  //*[@id="modalusername"]
${PasswordField}  //*[@id="current-password"]
${LogInWithCredentials}  //*[@id="root"]/div/div/div[4]/div[1]/div/div[4]/div[1]/button

*** Test Cases ***
case_001 Login and add a course to cart
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window and Accept Cookie
    Log In Procedure
    Sleep & Close Browser