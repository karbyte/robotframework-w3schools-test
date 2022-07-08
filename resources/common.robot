*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
Sleep & Close Browser
    Sleep    2s
    Close Browser

Maximize Browser Window and Accept Cookie
    Maximize Browser Window
    Wait Until Page Contains Element    //*[@id="accept-choices"]
    Click Element    //*[@id="accept-choices"]

Log In Procedure
    Click Element    ${LogInButton}
    Input Text    ${EmailField}    yolotzin.jadalee@moondoo.org
    Textfield Should Contain    ${EmailField}   yolotzin.jadalee@moondoo.org
    Input Text   ${PasswordField}    Awds123$
    Textfield Should Contain    ${PasswordField}   Awds123$
    Click Element    ${LogInWithCredentials}